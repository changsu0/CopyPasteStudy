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

<h3>Lwj Subway List</h3>
<br />

<form:form action="/selectLwjSubwayList" method="get">
    <div class="form-row align-items-center">
        <div class="col-auto">
            <label class="sr-only" for="line">line</label>
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">line</div>
                </div>
                <input type="text" class="form-control" id="line" placeholder="line" name="line" value="${lwjSubwayVO.line}">
            </div>
        </div>
        <div class="col-auto">
            <label class="sr-only" for="name">name</label>
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">name</div>
                </div>
                <input type="text" class="form-control" id="name" placeholder="name" name="name" value="${lwjSubwayVO.name}">
            </div>
        </div>
        <div class="col-auto">
            <button name="action" class="btn btn-info" type="submit">조회</button>
        </div>
    </div>
</form:form>
<br /><br />
    <table class="table table-striped">
        <thead>
        <tr>
            <th scope="col">#</th>
            <th scope="col">호선</th>
            <th scope="col">역이름</th>
        </tr>
        </thead>
        <tbody>
            <c:forEach var="list" items="${selectLwjSubwayList}" varStatus="status">
                <tr>
                    <td scope="row"><c:out value="${status.count}" /></td>
                    <td><a href="<c:url value='/syncSampleForm?userId=${list.name}' />">${list.line}</a></td>
                    <td>${list.name}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>

</html>
