document.addEventListener("DOMContentLoaded", function () {
    const searchButton = document.getElementById("searchButton");
    const addButton = document.getElementById("addButton");
    const deleteButton = document.getElementById("deleteButton");
    const closeButton = document.getElementById("closeButton");

    searchButton.addEventListener("click", searchEmployees);
    addButton.addEventListener("click", addEmployee);
    deleteButton.addEventListener("click", deleteSelectedEmployees);
    closeButton.addEventListener("click", closeApp);

    function searchEmployees() {
        // Fetch and display employees based on search criteria
        const employeeId = document.getElementById("searchEmployeeId").value;
        const department = document.getElementById("searchDepartment").value;
        const joiningDate = document.getElementById("searchJoiningDate").value;
        
        let query = '/employees?';
        if (employeeId) query += `employeeId=${employeeId}&`;
        if (department) query += `department=${department}&`;
        if (joiningDate) query += `joiningDate=${joiningDate}`;

        fetch(query)
            .then(response => response.json())
            .then(data => {
                const tbody = document.querySelector("#employeeTable tbody");
                tbody.innerHTML = "";
                data.forEach(employee => {
                    const tr = document.createElement("tr");
                    tr.innerHTML = `
                        <td><input type="checkbox" class="select-employee" data-id="${employee.employeeId}"></td>
                        <td>${employee.employeeId}</td>
                        <td>${employee.joiningDate}</td>
                        <td>${employee.name}</td>
                        <td>${employee.gender}</td>
                        <td>${employee.age}</td>
                        <td>${employee.department}</td>
                        <td>${employee.email}</td>
                    `;
                    tbody.appendChild(tr);
                });
            });
    }

    function addEmployee() {
        // Redirect to add employee form or display a form modal
        window.location.href = "/add-employee.html";
    }

    function deleteSelectedEmployees() {
        const selectedCheckboxes = document.querySelectorAll(".select-employee:checked");
        selectedCheckboxes.forEach(checkbox => {
            const employeeId = checkbox.dataset.id;
            fetch(`/employees/${employeeId}`, { method: 'DELETE' })
                .then(response => {
                    if (response.ok) {
                        checkbox.closest("tr").remove();
                    }
                });
        });
    }

    function closeApp() {
        // Implement your close logic, e.g., redirect to logout page or close the app
        window.location.href = "/logout";
    }
});
