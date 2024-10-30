<%--
  Created by IntelliJ IDEA.
  User: Анастасия
  Date: 23.10.2024
  Time: 18:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>
        div{
            text-align: center;
        }
        table{
            width: 200px;
            margin: 0 auto;
        }
    </style>
</head>
<body>
<div>
    <h1>Редактировать сотрудника</h1>
    <form action="/updateEmployee" method="post">
        <input type="hidden" name="id" value="${editEmployee.id}">
        <table>
            <tr>
                <td>Name</td>
                <td><input type="text" name="name" value="${editEmployee.name}"></td>
            </tr>
            <tr>
                <td>Email</td>
                <td><input type="email" name="email" value="${editEmployee.email}"></td>
            </tr>
            <tr>
                <td>Address</td>
                <td><input type="text" name="addres"  value="${editEmployee.addres}"></td>
            </tr>
            <tr>
                <td colspan="2"><input type="submit" value="Update"></td>
            </tr>
        </table>
    </form>
</div>

</body>
</html>
