<%@ page import="com.dao.SpecialistDao, com.db.DBConnect, com.entity.Specialist, java.util.List, com.dao.BukinistDao, com.entity.Bukinist" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <jsp:include page="../component/allcss.jsp"/>
</head>
<body>
    <jsp:include page="navbar.jsp"/>
<section class="bukinist">
    <div class="wrap">
        <button class="btn btn-bukinist" type="button" data-bs-toggle="offcanvas" data-bs-target="#staticBackdrop" aria-controls="staticBackdrop">
            Добавить букиниста
        </button>

        <div class="offcanvas offcanvas-start" data-bs-backdrop="static" tabindex="-1" id="staticBackdrop" aria-labelledby="staticBackdropLabel">
            <div class="offcanvas-header">
                <h3 class="offcanvas-title" id="staticBackdropLabel">Добавить букиниста</h3>
                <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
            </div>
            <div class="offcanvas-body">
                <div>

        <form action="../addBukinist" method="post">
            <div class="mb-3">
                <label for="full">Полное имя</label>
                <input type="text" required name="full_name" class="form-control" id="full">
            </div>
            <div class="mb-3">
                <label for="dob">Дата рождения</label>
                <input type="date" required name="dob" class="form-control" id="dob">
            </div>
            <div class="mb-3">
                <label for="qualit">Должность</label>
                <input type="text" required name="qualification" class="form-control" id="qualit">
            </div>
            <div class="mb-3">
                <label for="special">Специалист</label>
                <select  name="spec" required class="form-control" id="special">
                    <option>** Выбор специалиста **</option>
                    <%
                        SpecialistDao dao = new SpecialistDao(DBConnect.getConn());
                        List<Specialist> list = dao.getAllSpecialist();
                        for (Specialist s : list) {
                    %>
                    <option><%= s.getSpecialistName() %></option>

                    <%

                        }
                    %>

                </select>
            </div>
            <div class="mb-3">
                <label for="email">Email:</label>
                <input type="email" required name="email" class="form-control" id="email">
            </div>
            <div class="mb-3">
                <label for="tel">Телефон</label>
                <input type="text" required name="mobno" class="form-control" id="tel">
            </div>
            <div class="mb-3">
                <label for="psw">Пароль</label>
                <input type="password" required name="password" class="form-control" id="psw">
            </div>
            <button class="btn btn-info">Отправить</button>
        </form>
                </div>
            </div>
        </div>
    <br>
        <c:if test="${not empty errorMsg}">
            <p class="center text-danger fs-3">${errorMsg}</p>
            <c:remove var="errorMsg" scope="session" />
        </c:if>
        <c:if test="${not empty succMsg}">
            <p class="center text-success fs-3">${succMsg}</p>
            <c:remove var="succMsg" scope="session" />
        </c:if>
        <h2>Данные букинистов</h2>
        <table class="table">
            <tr>
                <th scope="col">Имя</th>
                <th scope="col">Дата рождения</th>
                <th scope="col">Квалификация</th>
                <th scope="col">Специальность</th>
                <th scope="col">Email</th>
                <th scope="col">Телефон</th>
                <th scope="col">Действие</th>
            </tr>
            <%
                BukinistDao dao2 = new BukinistDao(DBConnect.getConn());
                List<Bukinist> list2 = dao2.getAllBukinists();
                for(Bukinist b : list2) {
                    %>
            <tr>
                <td><%=b.getFullName() %></td>
                <td><%=b.getDob() %></td>
                <td><%=b.getQualification() %></td>
                <td><%=b.getSpecialist() %></td>
                <td><%=b.getEmail() %></td>
                <td><%=b.getMobno() %></td>
                <td>
                    <a href="edit_bukinist.jsp?id=<%= b.getId() %>" class="btn btn-sm btn-info">Изменить</a>
                    <a href="../deleteBukinist?id=<%= b.getId() %>" class="btn btn-sm btn-danger">Удалить</a>
                </td>
            </tr>
            <%
                }
            %>
        </table>
    </div>
</section>

</body>
</html>
