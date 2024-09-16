<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.util.Calendar" %>
<%@ page import="java.text.SimpleDateFormat" %>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Chọn ngày</title>
</head>
<body>
<%
    // Xử lý ngày chọn từ form
    String day = request.getParameter("day");
    String month = request.getParameter("month");
    String year = request.getParameter("year");

    // Nếu không có giá trị, thiết lập giá trị mặc định
    if (day == null || day.isEmpty()) day = "1";
    if (month == null || month.isEmpty()) month = "1";
    if (year == null || year.isEmpty()) year = String.valueOf(Calendar.getInstance().get(Calendar.YEAR));

    // Tạo ngày đã chọn từ các tham số
    String selectedDate = day + "/" + month + "/" + year;

    // Lấy ngày hiện tại
    Calendar calendar = Calendar.getInstance();
    SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
    String currentDate = sdf.format(calendar.getTime());

    // Gán các thuộc tính để sử dụng trong JSTL
    request.setAttribute("currentDate", currentDate);
    request.setAttribute("selectedDay", Integer.parseInt(day));
    request.setAttribute("selectedMonth", Integer.parseInt(month));
    request.setAttribute("selectedYear", Integer.parseInt(year));
    request.setAttribute("currentYear", calendar.get(Calendar.YEAR));
    request.setAttribute("selectedDate", selectedDate);
%>

<form method="post">
    Hôm nay, ngày <c:out value="${currentDate}" /> <hr>

    Chọn ngày:
    <select name="day">
        <c:forEach var="i" begin="1" end="31">
            <option value="${i}" <c:if test="${i == selectedDay}">selected</c:if>>${i}</option>
        </c:forEach>
    </select>

    Chọn tháng:
    <select name="month">
        <c:forEach var="i" begin="1" end="12">
            <option value="${i}" <c:if test="${i == selectedMonth}">selected</c:if>>${i}</option>
        </c:forEach>
    </select>

    Chọn năm:
    <select name="year">
        <c:forEach var="i" begin="${currentYear - 100}" end="${currentYear + 10}">
            <option value="${i}" <c:if test="${i == selectedYear}">selected</c:if>>${i}</option>
        </c:forEach>
    </select>

    <br>
    <input type="submit" value="Cập nhật">
</form>

Kết quả: <br>
<p>Ngày đã chọn: <c:out value="${selectedDate}" /></p>

</body>
</html>
