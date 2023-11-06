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

<h3>Kcs First List</h3>
<br />

<form:form action="/selectKcsFirstList" method="get">
    <div class="form-row align-items-center">
        <div class="col-auto">
            <label class="sr-only" for="col1">Col1</label>
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">Col1</div>
                </div>
                <input type="text" class="form-control" id="col1" placeholder="col1" name="col1" value="${kcsFirstVO.col1}">
            </div>
        </div>
        <div class="col-auto">
            <label class="sr-only" for="col1">Col2</label>
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">Col2</div>
                </div>
                <input type="text" class="form-control" id="col2" placeholder="col2" name="col2" value="${kcsFirstVO.col2}">
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
            <th scope="col">Col1</th>
            <th scope="col">Col2</th>
        </tr>
        </thead>
        <tbody>
            <c:forEach var="list" items="${selectKcsFirstList}" varStatus="status">
                <tr>
                    <td scope="row"><c:out value="${status.count}" /></td>
                    <td><a href="<c:url value='/syncSampleForm?col1=${list.col1}' />">${list.col1}</a></td>
                    <td>${list.col2}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>

</html>
