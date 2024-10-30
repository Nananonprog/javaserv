<%--
  Created by IntelliJ IDEA.
  User: Анастасия
  Date: 21.10.2024
  Time: 19:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
    <style>
        div{
            text-align: center;
        }
        table{
            border: 1px solid;
            width: 800px;
            margin: 0 auto;
        }
        th, td{
            border: 1px solid;
        }
        .last{
            display: flex;
            justify-content: space-between;
        }
        h4{
            color: rgba(34,214,112,0.8)
        }
    </style>
</head>
<body>
<div>
    <h1>Менеджер по персоналу</h1>
    <c:if test="${not empty msg}">
        <h4>${msg}</h4>
        <c:remove var="msg" />
    </c:if>
    <h3><a href="/new">Новый сотрудник</a></h3>
<table>
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Email</th>
        <th>Address</th>
        <th>Action</th>
    </tr>

    <c:forEach items="${employeeList}" var="employee">
        <tr>
            <td>${employee.id}</td>
            <td>${employee.name}</td>
            <td>${employee.email}</td>
            <td>${employee.addres}</td>
            <td class="last">
                <a href="edit/${employee.id}">Edit</a>
                <a href="delete/${employee.id}">Delete</a>
            </td>
        </tr>
    </c:forEach>
</div>
</table>
</body>
</html>
