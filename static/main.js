// sidebar
const sidebarToggle = document.querySelector(".toggle-sidebar-btn");

sidebarToggle.addEventListener("click", () => {
  document.body.classList.toggle("toggle-sidebar");
});

const datatables = document.querySelectorAll('.datatable')
datatables.forEach(datatable => {
  new simpleDatatables.DataTable(datatable, {
    perPageSelect: [5, 10, 15, ["All", -1]],
    columns: [{
        select: 2,
        sortSequence: ["desc", "asc"]
      },
      {
        select: 3,
        sortSequence: ["desc"]
      },
      {
        select: 4,
        cellClass: "green",
        headerClass: "red"
      }
    ]
  });
})