<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: Анастасия
  Date: 09.10.2024
  Time: 17:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
   <title>Title</title>
</head>
<body>
<h1>Главная страница</h1>

<%--<%--%>
<%--  String name = (String) request.getAttribute("name");--%>
<%--  Integer age = (Integer) request.getAttribute("age");--%>
<%--    List<String> nameList = (List<String>) request.getAttribute("nameList");--%>
<%--%>--%>

<%--<h3>Name: <%= name %></h3>--%>
<%--<h3>Age: <%= age %></h3>--%>
<%--<h3>Name List: <%= nameList %></h3>--%>

<%--<ul>--%>
<%--    <% for(String s : nameList){%>--%>
<%--    <li><%= s %></li>--%>
<%--    <%} %>--%>
<%--</ul>--%>

<%--<h3>Name: ${name}</h3>--%>
<%--<h3>Age: ${age} </h3>--%>
<%--<h3>Name List: ${nameList} </h3>--%>
<%--<ul>--%>
<%--    <c:forEach items="${nameList}" var="n">--%>
<%--        <li><c:out value="${n}"></c:out> </li>--%>
<%--    </c:forEach>--%>
<%--</ul>--%>
<%--<a href="login">Login</a>--%>
<a href="register">Регистрация</a>
</body>
</html>
