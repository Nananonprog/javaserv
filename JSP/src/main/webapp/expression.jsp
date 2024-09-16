<%--
  Created by IntelliJ IDEA.
  User: Анастасия
  Date: 11.09.2024
  Time: 17:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    request.setAttribute("request_name", "Expression Language");
//    out.println(request.getAttribute("request_name"));

%>

${request_name}
<p>Hello,${requestScope.request_name}</p>

<%
    session.setAttribute("session_cname", "Start");
//    out.println(session.getAttribute("session_cname"));

%>
    <h4>Course: ${session_cname}</h4>

    <form action="result.jsp">
        <input type="text" name="name1" placeholder="Введите имя">
        <input type="submit" value="Отправить">
    </form>
</body>
</html>
