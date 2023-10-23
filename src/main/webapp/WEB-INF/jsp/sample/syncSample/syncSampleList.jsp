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

<h3>Sample리스트</h3>
<br />

<form:form action="/syncSampleList" method="get">
    <div class="form-row align-items-center">
        <div class="col-auto">
            <label class="sr-only" for="userId">User ID</label>
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">User ID</div>
                </div>
                <input type="text" class="form-control" id="userId" placeholder="UserID" name="userId" value="${sampleVO.userId}">
            </div>
        </div>
        <div class="col-auto">
            <label class="sr-only" for="userName">userName</label>
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">userName</div>
                </div>
                <input type="text" class="form-control" id="userName" placeholder="UserName" name="userName" value="${sampleVO.userName}">
            </div>
        </div>
    </div>
    <div class="form-row align-items-center">
        <div class="col-auto">
            <label class="sr-only" for="userPhone">userPhone</label>
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">userPhone</div>
                </div>
                <input type="text" class="form-control" id="userPhone" placeholder="userPhone" name="userPhone" value="${sampleVO.userPhone}">
            </div>
        </div>
        <div class="col-auto">
            <label class="sr-only" for="deptCode">deptCode</label>
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">deptCode</div>
                </div>
                <input type="text" class="form-control" id="deptCode" placeholder="deptCode" name="deptCode" value="${sampleVO.deptCode}">
<%--                <select class="form-control" id="deptCode" name="deptCode">--%>
<%--                    <option value="">전체</option>--%>
<%--                    <c:forEach var="list" items="${deptCodeList}" varStatus="status">--%>
<%--                        <option value="${list.deptCode}" <c:if test="${list.deptCode eq sampleVO.deptCode}">selected="selected"</c:if> >${list.deptName}</option>--%>
<%--                    </c:forEach>--%>
<%--                </select>--%>
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
            <th scope="col">ID</th>
            <th scope="col">이름</th>
            <th scope="col">전화</th>
            <th scope="col">부서코드</th>
        </tr>
        </thead>
        <tbody>
            <c:forEach var="list" items="${syncSampleList}" varStatus="status">
                <tr>
                    <td scope="row"><c:out value="${status.count}" /></td>
                    <td><a href="<c:url value='/syncSampleForm?userId=${list.userId}' />">${list.userId}</a></td>
                    <td>${list.userName}</td>
                    <td>${list.userPhone}</td>
                    <td>${list.deptCode}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>

</html>
