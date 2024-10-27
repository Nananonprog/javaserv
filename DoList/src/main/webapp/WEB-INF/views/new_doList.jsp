<%--
  Created by IntelliJ IDEA.
  User: Анастасия
  Date: 27.10.2024
  Time: 21:14
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
    <h1>Новый Do-List</h1>
    <form action="save" method="post">
        <table>
            <tr>
                <td>Title</td>
                <td><input type="text" name="title"></td>
            </tr>
            <tr>
                <td>Importance</td>
                <td><input type="text" name="importance"></td>
            </tr>
            <tr>
                <td>Deadline</td>
                <td><input type="text" name="deadline"></td>
            </tr>
            <tr>
                <td colspan="2"><input type="submit" value="Save"></td>
            </tr>
        </table>
    </form>
</div>

</body>
</html>
