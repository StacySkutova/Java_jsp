<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.time.LocalDate" %>
<%@ page import="java.time.DayOfWeek" %>
<%@ page import="java.time.format.DateTimeFormatter" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Task 2</title>
</head>
<body>
<h1><%= "JSP Task 2" %></h1>
<h2><%= "Hello" %></h2>
<%  LocalDate current = LocalDate.now();
    DayOfWeek currentWeekDay = current.getDayOfWeek();
    LocalDate nextPlus1Date = LocalDate.now().plusDays(1);
    DayOfWeek nextPlus1WeekDay = nextPlus1Date.getDayOfWeek();
    LocalDate nextPlus2Date = LocalDate.now().plusDays(2);
    DayOfWeek nextPlus2WeekDay = nextPlus2Date.getDayOfWeek();
    LocalDate nextPlus3Date = LocalDate.now().plusDays(3);
    DayOfWeek nextPlus3WeekDay = nextPlus3Date.getDayOfWeek();
    LocalDate nextPlus4Date = LocalDate.now().plusDays(4);
    DayOfWeek nextPlus4WeekDay = nextPlus4Date.getDayOfWeek();
    LocalDate nextPlus5Date = LocalDate.now().plusDays(5);
    DayOfWeek nextPlus5WeekDay = nextPlus5Date.getDayOfWeek();
    LocalDate nextPlus6Date = LocalDate.now().plusDays(6);
    DayOfWeek nextPlus6WeekDay = nextPlus6Date.getDayOfWeek();

    DateTimeFormatter formattedDate = DateTimeFormatter.ofPattern("dd.MM.yyyy");
%>
<%! String getWeekDay (DayOfWeek weekDay){
    switch (weekDay) {
        case MONDAY:return "1";
        case TUESDAY:return "2";
        case WEDNESDAY:return "3";
        case THURSDAY:return "4";
        case FRIDAY:return "5";
        case SATURDAY:return "6";
        case SUNDAY:return "7";
    }
    return weekDay.toString();
}%>

<table border="1px" style="border:solid">
    <tr>
        <th>Date</th>
        <th>Week day number</th>
    </tr>
    <tr align="center">
        <td><%out.println(current.format(formattedDate));%> </td>
        <td><%out.println(getWeekDay(currentWeekDay));%></td>
    </tr>
    <tr align="center">
        <td><%out.println(nextPlus1Date.format(formattedDate));%> </td>
        <td><%out.println(getWeekDay(nextPlus1WeekDay));%></td>
    </tr>
    <tr align="center">
        <td><%out.println(nextPlus2Date.format(formattedDate));%> </td>
        <td><%out.println(getWeekDay(nextPlus2WeekDay));%></td>
    </tr>
    <tr align="center">
        <td><%out.println(nextPlus3Date.format(formattedDate));%> </td>
        <td><%out.println(getWeekDay(nextPlus3WeekDay));%></td>
    </tr>
    <tr align="center">
        <td><%out.println(nextPlus4Date.format(formattedDate));%> </td>
        <td><%out.println(getWeekDay(nextPlus4WeekDay));%></td>
    </tr>
    <tr align="center">
        <td><%out.println(nextPlus5Date.format(formattedDate));%> </td>
        <td><%out.println(getWeekDay(nextPlus5WeekDay));%></td>
    </tr>
    <tr align="center">
        <td><%out.println(nextPlus6Date.format(formattedDate));%> </td>
        <td><%out.println(getWeekDay(nextPlus6WeekDay));%></td>
    </tr>
</table>
</body>
</html>