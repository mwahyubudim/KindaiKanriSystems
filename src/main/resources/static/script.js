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
        const joiningDate = document.getElementById("searchJoiningDate").value;
        const name = document.getElementById("searchName").value;
        const gender = document.getElementById("searchGender").value;
        const age = document.getElementById("searchAge").value;
        const department = document.getElementById("searchDepartment").value;
        const email = document.getElementById("searchEmail").value;
        
        let query = '/employees?';
        if (employeeId) query += `employeeId=${employeeId}&`;
        if (joiningDate) query += `joiningDate=${joiningDate}&`;
        if (name) query += `name=${name}&`;
        if (gender) query += `gender=${gender}&`;
        if (age) query += `age=${age}&`;
        if (department) query += `department=${department}&`;
        if (email) query += `email=${email}`;

        fetch(query)
            .then(response => response.json())
            .then(data => {
                const tbody = document.querySelector("#employeeTable tbody");
                tbody.innerHTML = "";
                data.forEach(employee => {
                    const tr = document.createElement("tr");
                    tr.innerHTML = `
                        <td><input type="checkbox" class="select-employee" data-id="${employee.社員ID}"></td>
                        <td>${employee.社員ID}</td>
                        <td>${employee.入社年月日}</td>
                        <td>${employee.氏名}</td>
                        <td>${employee.性別}</td>
                        <td>${employee.年齢}</td>
                        <td>${employee.所属}</td>
                        <td>${employee.メールアドレス}</td>
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
            fetch(`/java_kenshuu/kaishain/${employeeId}`, { method: 'DELETE' })
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
