<%--
  Created by IntelliJ IDEA.
  User: Анастасия
  Date: 27.10.2024
  Time: 21:43
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
    <h1>Редактировать лист</h1>
    <form action="/updateDoList" method="post">
        <input type="hidden" name="id" value="${editDoList.id}">

        <table>
            <tr>
                <td>Title</td>
                <td><input type="text" name="title" value="${editDoList.title}"></td>
            </tr>
            <tr>
                <td>Importance</td>
                <td><input type="text" name="importance" value="${editDoList.importance}"></td>
            </tr>
            <tr>
                <td>Deadline</td>
                <td><input type="text" name="deadline" value="${editDoList.deadline}"></td>
            </tr>
            <tr>
                <td colspan="2"><input type="submit" value="Update"></td>
            </tr>
        </table>
    </form>
</div>

</body>
</html>
