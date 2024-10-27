
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
            color: darkseagreen;
        }

    </style>
</head>
<body>
<div>
<h1>TO-DO LIST</h1>

    <c:if test="${not empty msg}">
        <h4>${msg}</h4>
        <c:remove var="msg"/>
    </c:if>
    <h3><a href="/new">Новый лист</a></h3>
<table>
    <tr>
        <th>ID</th>
        <th>Title</th>
        <th>Importance</th>
        <th>Deadline</th>
        <th>Action</th>
    </tr>

    <c:forEach items="${doLists}" var="list">
        <tr>
            <td>${list.id}</td>
            <td>${list.title}</td>
            <td>${list.importance}</td>
            <td>${list.deadline}</td>
            <td class="last">
                <a href="edit/${list.id}">Edit</a>
                <a href="delete/${list.id}">Delete</a>
            </td>
        </tr>

    </c:forEach>
</table>
</div>
</body>
</html>
