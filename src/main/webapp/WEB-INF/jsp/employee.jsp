<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Employee Dashboard</title>
    <link rel="stylesheet" href="css/employee.css">
</head>

<body>
<div class="container">
    <!-- Employee Dashboard -->
    <h1 class="employee-header">Employee Dashboard</h1>
    <!-- Button group -->
    <div class="button-group">
        <button onclick="showData('customer-details')" id="customer-details-btn" class="selected">Customer
            Details</button>
        <button onclick="showData('daily-tasks')" id="daily-tasks-btn">Daily Tasks</button>
        <button onclick="showData('schedule')" id="schedule-btn">Schedule</button>
        <button onclick="showData('employee-profile')" id="employee-profile-btn">Employee Profile</button>
    </div>

    <!-- Customer Details Table -->
    <div class="data-table" id="customer-details">
        <h1 class="customer-number">Total Customers: 11</h1>
        <div class="search-container">
            <div class="searching">
                <input type="text" id="customer-id-input" placeholder="Enter Customer Account Number"
                       class="search-input">
                <button onclick="searchCustomer()" class="search-button">Search</button>
            </div>
            <button onclick="toggleOrder()" class="order-button" id="order-toggle">Ascending</button>
        </div>

        <div id="search-result"></div>
        <table id="customer-details-table">
            <tr class="header-row">
                <th>Account Number</th>
                <th>Name</th>
                <th class="mobile-none">Email</th>
                <th class="mobile-none">Phone</th>
                <th>Details</th>
            </tr>
            <tr>
                <td>1</td>
                <td>John Doe</td>
                <td class="mobile-none">john@example.com</td>
                <td class="mobile-none">123-456-7890</td>
                <td><button onclick="openModal('bank')" class="modal-button">Details</button></td>
            </tr>
            <!-- Add more rows here -->
        </table>
    </div>

    <!-- Daily Tasks Table -->
    <div class="data-table" id="daily-tasks">
        <h1>Daily Tasks</h1>
        <table id="daily-tasks-table">
            <tr class="header-row">
                <th>Task No</th>
                <th>Task</th>
                <th class="mobile-none">Deadline</th>
                <th>Status</th>
            </tr>
            <tr>
                <td>1</td>
                <td>Complete project report</td>
                <td class="mobile-none">2024-03-10</td>
                <td><button onclick="toggleTaskStatus(this)" class="status-button pending">Pending</button></td>
            </tr>
            <!-- Add more rows here -->
        </table>
    </div>

    <!-- Schedule Table -->
    <div class="data-table" id="schedule">
        <h1>Schedule</h1>
        <table id="schedule-table">
            <tr class="header-row">
                <th>Schedule No</th>
                <th>Date</th>
                <th>Time</th>
                <th>Location</th>
            </tr>
            <tr>
                <td>1</td>
                <td>2024-03-10</td>
                <td>9:00 AM - 5:00 PM</td>
                <td>Office</td>
            </tr>
            <!-- Add more rows here -->
        </table>
    </div>

    <!-- Employee Profile -->
    <div class="data-table employee-profile" id="employee-profile">
        <h1>Employee Profile</h1>
        <div class="profile-details">
            <div class="profile-image">
                <!-- Employee image goes here -->
                <img src="./images/employee.png" alt="Employee Image">
            </div>
            <div class="profile-info">
                <h2>Name: John Doe</h2>
                <p>Designation: Project Manager</p>
                <p>Address: 123 Street, City, Country</p>
                <p>Email: john@example.com</p>
                <p>Phone: 123-456-7890</p>
                <!-- Additional details can be added here -->
            </div>
        </div>
        <div class="task-stats">
            <div class="task-stat">
                <h3>Total Tasks</h3>
                <p>10</p>
            </div>
            <div class="task-stat">
                <h3>Completed Tasks</h3>
                <p>0</p>
            </div>
            <div class="task-stat">
                <h3>Tasks Pending</h3>
                <p>10</p>
            </div>
        </div>
        <div class="performance-graph">
            <!-- Performance graph goes here -->
            <!-- Placeholder for the performance graph -->
        </div>
    </div>

</div>

<script>
    // By default, select Customer Details and apply selected button style
    var defaultButton = document.getElementById('customer-details-btn');
    defaultButton.classList.add('selected');

    // Show Customer Details table by default
    var defaultTable = document.getElementById('customer-details');
    defaultTable.style.display = 'block';

    function showData(id) {
        // Hide all data tables
        var tables = document.querySelectorAll('.data-table');
        tables.forEach(function (table) {
            table.style.display = 'none';
        });

        // Hide all buttons and remove the 'selected' class
        var buttons = document.querySelectorAll('.button-group button');
        buttons.forEach(function (button) {
            button.classList.remove('selected');
        });

        // Show the selected data table
        var selectedTable = document.getElementById(id);
        if (selectedTable) {
            selectedTable.style.display = 'block';

            // Apply the 'selected' class to the clicked button
            var selectedButton = document.querySelector('#' + id + '-btn');
            if (selectedButton) {
                selectedButton.classList.add('selected');
            }
        } else {
            console.error("Invalid data table ID:", id);
        }
    }

    // for ascending table in customer details
    var ascendingOrder = true;

    function toggleOrder() {
        ascendingOrder = !ascendingOrder;
        var toggleButton = document.getElementById('order-toggle');
        toggleButton.textContent = ascendingOrder ? 'Ascending' : 'Descending';

        // Get the table and its rows
        var table = document.getElementById('customer-details-table');
        var rows = table.getElementsByTagName('tr');

        // Remove the header row from the sorting process
        var header = rows[0];
        var restOfRows = Array.from(rows).slice(1);

        // Sort the rows based on the ID column
        restOfRows.sort(function (row1, row2) {
            var id1 = parseInt(row1.cells[0].textContent || row1.cells[0].innerText);
            var id2 = parseInt(row2.cells[0].textContent || row2.cells[0].innerText);
            return ascendingOrder ? id1 - id2 : id2 - id1;
        });

        // Re-append the sorted rows to the table
        table.innerHTML = '';
        table.appendChild(header);
        restOfRows.forEach(function (row) {
            table.appendChild(row);
        });
    }

    function searchCustomer() {
        var input = document.getElementById('customer-id-input').value;
        var table = document.getElementById('customer-details-table');
        var rows = table.getElementsByTagName('tr');
        var found = false;

        for (var i = 0; i < rows.length; i++) {
            var cells = rows[i].getElementsByTagName('td');
            if (cells.length > 0) {
                var id = cells[0].textContent || cells[0].innerText;
                if (id === input) {
                    rows[i].style.display = '';
                    found = true;
                } else {
                    rows[i].style.display = 'none';
                }
            }
        }

        var searchResult = document.getElementById('search-result');
        if (!found) {
            searchResult.textContent = 'No Customer Found';
            searchResult.classList.add('search-response');
        } else {
            searchResult.textContent = '';
            searchResult.classList.remove('search-response');
        }

    }

    // for daily tasks
    function toggleTaskStatus(button) {
        if (button.textContent === 'Pending') {
            button.textContent = 'Completed';
            button.classList.remove('pending');
            button.classList.add('completed');
        } else {
            button.textContent = 'Pending';
            button.classList.remove('completed');
            button.classList.add('pending');
        }
    }

    // for customers details
    // Get the modal
    var modal = document.getElementById("myModal");

    // Function to open the modal and set its content
    function openModal(text) {
        var modalText = document.getElementById("modal-text");
        modalText.textContent = text;
        modal.style.display = "block";
    }

    // Function to close the modal
    function closeModal() {
        modal.style.display = "none";
    }

    // Close the modal when the user clicks anywhere outside of it
    window.onclick = function (event) {
        if (event.target == modal) {
            modal.style.display = "none";
        }
    }
</script>

</body>

</html>