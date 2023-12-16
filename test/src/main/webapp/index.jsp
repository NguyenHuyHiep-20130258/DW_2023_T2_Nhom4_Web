<!DOCTYPE html>
<html lang="en" dir="ltr">
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta charset="utf-8">
    <title>Calendar</title>
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet"
          href=
                  "https://fonts.googleapis.com/css2?family=Material+Symbols+Rounded:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200">
    <link rel="stylesheet" href="./assets/css/main.css">
</head>
<body>
<div class="container">
    <div class="calendar-container">
        <header class="calendar-header">
            <p class="calendar-current-date"></p>
            <div class="calendar-navigation">
				<span id="calendar-prev"
                      class="material-symbols-rounded">
					chevron_left
				</span>
                <span id="calendar-next"
                      class="material-symbols-rounded">
					chevron_right
				</span>
            </div>
        </header>

        <div class="calendar-body">
            <ul class="calendar-weekdays">
                <li>Sun</li>
                <li>Mon</li>
                <li>Tue</li>
                <li>Wed</li>
                <li>Thu</li>
                <li>Fri</li>
                <li>Sat</li>
            </ul>
            <ul class="calendar-dates"></ul>
        </div>
    </div>
    <div class="button-container">
        <button id="myButton">Tìm kết quả xổ số</button>
    </div>
    <div class="table-lottery"></div>
    <!-- Table with Xổ số Miền Bắc results -->
</div>
</body>
</html>
<script src="./assets/js/jquery-3.6.1.min.js"></script>
<script src="./assets/js/main.js"></script>

