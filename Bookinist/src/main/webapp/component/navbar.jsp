<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<div class="main">
    <div class="wrap">
        <ul class="menu">
            <li class="logo"><a href="index.jsp">Главная</a></li>

            <c:if test="${empty readerObj}">
            <li><a href="admin_login.jsp">Хозяин лавки</a></li>
            <li><a href="buk_login.jsp">Букинист</a></li>
            <li><a href="reader_login.jsp">Читатель</a></li>
            </c:if>
            
            <c:if test="${not empty readerObj}">
                <li><a href="">Запись</a></li>
                <li><a href="">Просмотр записей</a></li>
                <li>
                    <div class="dropdown">
                        <button class="btn btn-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
                            ${readerObj.name}
                        </button>
                        <ul class="dropdown-menu">
                            <li><a class="dropdown-item" href="#">Изменить пароль</a></li>
                            <li><a class="dropdown-item" href="../readerLogout">Выйти</a></li>
                        </ul>
                    </div>
                </li>
            </c:if>
        </ul>
    </div>
</div>
