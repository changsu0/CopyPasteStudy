<%--
  Created by IntelliJ IDEA.
  User: kimchangsu
  Date: 2021. 8. 23.
  Time: 오후 8:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <meta charset="utf-8">
    <%@ include file="/WEB-INF/jsp/common/header.jsp" %>
</head>
<body>
<jsp:include page="/WEB-INF/jsp/common/nav.jsp" />

<h3>Yjs Musical List</h3>
<br />

<form:form action="/selectYjsMusicalList" method="get">
    <div class="form-row align-items-center">
        <div class="col-auto">
            <label class="sr-only" for="title">Title</label>
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">Title</div>
                </div>
                <input type="text" class="form-control" id="title" placeholder="title" name="title" value="${yjsMusicalVO.title}">
            </div>
        </div>
        <div class="col-auto">
            <label class="sr-only" for="place">Place</label>
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">Place</div>
                </div>
                <input type="text" class="form-control" id="place" placeholder="place" name="place" value="${yjsMusicalVO.place}">
            </div>
        </div>
        <div class="form-row align-items-center">
            <div class="col-auto">
                <label class="sr-only" for="first_schedule">First_schedule</label>
                <div class="input-group mb-2">
                    <div class="input-group-prepend">
                        <div class="input-group-text">First_schedule</div>
                    </div>
                    <input type="text" class="form-control" id="first_schedule" placeholder="first_schedule" name="first_schedule" value="${yjsMusicalVO.firstSchedule}">
                </div>
            </div>
            <div class="col-auto">
                <label class="sr-only" for="last_schedule">Last_schedule</label>
                <div class="input-group mb-2">
                    <div class="input-group-prepend">
                        <div class="input-group-text">Last_schedule</div>
                    </div>
                    <input type="text" class="form-control" id="last_schedule" placeholder="last_schedule" name="last_schedule" value="${yjsMusicalVO.lastSchedule}">
                </div>
            </div>
            <div class="col-auto">
                <button name="action" class="btn btn-info" type="submit">조회</button>
            </div>
        </div>
    </div>
</form:form>
<br /><br />
    <table class="table table-striped">
        <thead>
        <tr>
            <th scope="col">#</th>
            <th scope="col">Title</th>
            <th scope="col">Place</th>
            <th scope="col">First_schedule</th>
            <th scope="col">Last_schedule</th>
        </tr>
        </thead>
        <tbody>
            <c:forEach var="list" items="${selectYjsMusicalList}" varStatus="status">
                <tr>
                    <td scope="row"><c:out value="${status.count}" /></td>
                    <td><a href="<c:url value='/selectYjsMusicalForm?title=${list.title}' />">${list.title}</a></td>
                    <td>${list.place}</td>
                    <td>${list.firstSchedule}</td>
                    <td>${list.lastSchedule}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>

</html>
