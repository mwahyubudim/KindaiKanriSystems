document.addEventListener("DOMContentLoaded", function () {
    const searchButton = document.getElementById("searchButton");

    searchButton.addEventListener("click", searchEmployees);

    function searchEmployees() {
        // Fetch and display employees based on search criteria
        const employeeId = document.getElementById("searchEmployeeId").value;
        const joiningDate = document.getElementById("searchJoiningDate").value;
        const name = document.getElementById("searchName").value;
        const gender = document.getElementById("searchGender").value;
        const age = document.getElementById("searchAge").value;
        const department = document.getElementById("searchDepartment").value;
        const email = document.getElementById("searchEmail").value;

        let query = '';
        if (employeeId) query += `employeeId=${employeeId}&`;
        if (joiningDate) query += `joiningDate=${joiningDate}&`;
        if (name) query += `name=${name}&`;
        if (gender) query += `gender=${gender}&`;
        if (age) query += `age=${age}&`;
        if (department) query += `department=${department}&`;
        if (email) query += `email=${email}`;

        fetch('/employees?' + query)
            .then(response => response.json())
            .then(data => {
                const tbody = document.querySelector("#employeeTable tbody");
                tbody.innerHTML = "";
                data.forEach(employee => {
                    const tr = document.createElement("tr");
                    tr.innerHTML = `
                        <td><input type="checkbox" class="select-employee" data-id="${employee.id}"></td>
                        <td>${employee.id}</td>
                        <td>${employee.joindate}</td>
                        <td>${employee.name}</td>
                        <td>${employee.sex}</td>
                        <td>${employee.age}</td>
                        <td>${employee.job}</td>
                        <td>${employee.email}</td>
                    `;
                    tbody.appendChild(tr);
                });
            })
            .catch(error => {
                console.error('Error fetching data:', error);
            });
    }
});
