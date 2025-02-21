from flask import Flask, render_template
from db import modify_database, get_db_connection
from datetime import datetime, timedelta

app = Flask(__name__)
modify_database()


@app.route("/")
def index():
    conn = get_db_connection()
    eggs = conn.execute("SELECT * FROM eggs_tbl").fetchall()
    conn.close()
    eggs = [dict(egg) for egg in eggs]
    
    return render_template("dashboard.html", eggs=eggs)


@app.route("/Inventory")
def inventory():
    conn = get_db_connection()
    eggs = conn.execute("SELECT * FROM eggs_tbl").fetchall()
    conn.close()

    eggs = [dict(egg) for egg in eggs]
    for egg in eggs:
        created_at = datetime.strptime(egg['created_at'], "%Y-%m-%d %H:%M:%S")
        egg['created_at'] = created_at.strftime("%B %d, %Y %H:%M:%S")
    
        # Calculate remaining days until expiry
        days_left = (created_at + timedelta(days=14) - datetime.now()).days
    
        # Format expiry message
        if days_left > 0:
            egg['expected_expiry'] = f"{days_left} days left"
        elif days_left == 0:
            egg['expected_expiry'] = "Expires today"
        else:
            egg['expected_expiry'] = f"Expired {abs(days_left)} days ago"

    return render_template("Inventory.html", eggs=eggs)


if __name__ == "__main__":
    app.run(debug=True)
