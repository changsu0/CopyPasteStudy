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

<h3>Lwj Country List</h3>
<br />

<form:form action="/lwjCountryList" method="get">
    <div class="form-row align-items-center">
        <div class="col-auto">
            <label class="sr-only" for="code">코드</label>
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">코드</div>
                </div>
                <input type="text" class="form-control" id="code" placeholder="code" name="code" value="${lwjCountryVO.code}">
            </div>
        </div>
        <div class="col-auto">
            <label class="sr-only" for="name">나라이름</label>
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">나라이름</div>
                </div>
                <input type="text" class="form-control" id="name" placeholder="name" name="name" value="${lwjCountryVO.name}">
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
            <th scope="col">나라이름</th>
            <th scope="col">코드</th>
        </tr>
        </thead>
        <tbody>
            <c:forEach var="list" items="${selectLwjCountryList}" varStatus="status">
                <tr>
                    <td scope="row"><c:out value="${status.count}" /></td>
                    <td><a href="<c:url value='/lwjCountryForm?code=${list.code}' />">${list.name}</a></td>
                    <td>${list.code}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>
