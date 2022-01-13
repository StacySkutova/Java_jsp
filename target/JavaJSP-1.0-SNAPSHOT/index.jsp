<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.time.LocalTime" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Task 1</title>
</head>
<body>
<h1><%= "JSP Task 1" %></h1>
<%
    LocalTime current = LocalTime.now();
    LocalTime morning=LocalTime.parse("06:00");
    LocalTime afternoon=LocalTime.parse("12:00");
    LocalTime evening=LocalTime.parse("18:00");
    LocalTime night=LocalTime.parse("22:00");

    if (current.isAfter(morning) && current.isBefore(afternoon))
        out.println("<h2>Good morning!</h2>");
    else if (current.isAfter(afternoon) && current.isBefore(evening))
        out.println("<h2>Good afternoon!</h2>");
    else if (current.isAfter(evening) && current.isBefore(night))
        out.println("<h2>Good evening!</h2>");
    else
        out.println("<h2>Good night!</h2>");
%>
</body>
</html>