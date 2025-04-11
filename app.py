from flask import Flask, render_template, jsonify
from db import modify_database, get_db_connection
from datetime import datetime, timedelta
from flask import request

app = Flask(__name__)
modify_database()


@app.route("/")
def index():
    conn = get_db_connection()
    # Fetch all eggs
    eggs = conn.execute("SELECT * FROM eggs_tbl").fetchall()
    
    # Calculate total eggs
    total_eggs = len(eggs)
    
    # Calculate monthly eggs
    one_month_ago = datetime.now() - timedelta(days=30)
    monthly_eggs = conn.execute(
        "SELECT COUNT(*) as count FROM eggs_tbl WHERE created_at >= ?", 
        (one_month_ago.strftime("%Y-%m-%d %H:%M:%S"),)
    ).fetchone()["count"]
    
    # Calculate daily eggs
    today = datetime.now().strftime("%Y-%m-%d")
    daily_eggs = conn.execute(
        "SELECT COUNT(*) as count FROM eggs_tbl WHERE DATE(created_at) = ?", 
        (today,)
    ).fetchone()["count"]
    
    conn.close()
    eggs = [dict(egg) for egg in eggs]
    
    return render_template(
        "dashboard.html", 
        eggs=eggs, 
        total_eggs=total_eggs, 
        monthly_eggs=monthly_eggs, 
        daily_eggs=daily_eggs
    )
    
@app.route("/chart-data")
def chart_data():
    conn = get_db_connection()
    eggs = conn.execute("SELECT size, COUNT(*) as count FROM eggs_tbl GROUP BY size").fetchall()
    conn.close()

    data = [{"name": egg["size"], "value": egg["count"]} for egg in eggs]
    
    return jsonify(data)

@app.route("/Inventory")
def inventory():
    conn = get_db_connection()
    eggs = conn.execute("SELECT * FROM eggs_tbl ORDER BY created_at DESC").fetchall()
    conn.close()

    # Convert created_at and expected_expiry to readable format
    eggs = [
        {
            **dict(egg),
            "created_at": datetime.strptime(egg["created_at"], "%Y-%m-%d %H:%M:%S").strftime("%Y-%m-%d"),
            "expected_expiry": datetime.strptime(egg["expected_expiry"], "%Y-%m-%d %H:%M:%S").strftime("%Y-%m-%d")
        }
        for egg in eggs
    ]

    return render_template("Inventory.html", eggs=eggs)

@app.route("/add-egg", methods=["POST"])
def add_egg():
    size = request.form.get("size")
    weight = request.form.get("weight")

    if not size or not weight:
        return jsonify({"error": "Size and weight are required"}), 400
    try:
        weight = float(weight)
    except ValueError:
        return jsonify({"error": "Weight must be a number"}), 400
    
    conn = get_db_connection()
    conn.execute("INSERT INTO eggs_tbl (size, weight) VALUES (?, ?)", (size, weight))
    conn.commit()
    conn.close()
    return jsonify({"message": "Egg added successfully"}), 201

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000, debug=True)
