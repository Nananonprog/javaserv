<%--
  Created by IntelliJ IDEA.
  User: Анастасия
  Date: 16.09.2024
  Time: 12:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <div class="container">
        <jsp:include page="header.jsp" />
        <section>
            <p><b>Производитель:</b><%=request.getParameter("manufacturer")%> </p>
            <p><b>Объем SSD:</b><%=request.getParameter("SSD")%> </p>
            <p><b>Тип видеокарты:</b><%=request.getParameter("GPU")%> </p>
            <p><b>Модель процессора:</b><%=request.getParameter("proc")%> </p>
            <p><b>Операционная система:</b><%=request.getParameter("os")%> </p>
            <p><b>Тип матрицы:</b><%=request.getParameter("matrix")%> </p>
            <p><b>Разрешение экрана:</b><%=request.getParameter("resolution")%> </p>
            <p><b>Сенсорный экран:</b><%=request.getParameter("touchscreen")%> </p>
            <p><b>Подсветка клавиатуры:</b><%=request.getParameter("light")%> </p>

        </section>
        <jsp:include page="header.jsp" />
    </div>


</body>
</html>
