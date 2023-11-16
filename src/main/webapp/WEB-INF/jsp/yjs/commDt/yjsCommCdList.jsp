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

<h3>Yjs Common Cd List</h3>
<br />

<form:form action="/yjsCommCdList" method="get">
    <div class="form-row align-items-center">
        <div class="col-auto">
            <label class="sr-only" for="commCd">공통코드</label>
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">공통코드</div>
                </div>
                <input type="text" class="form-control" id="commCd" placeholder="공통코드" name="commCd" value="${yjsCommDtVO.commCd}">
            </div>
        </div>
        <div class="col-auto">
            <label class="sr-only" for="commNm">공통코드명</label>
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">공통코드명</div>
                </div>
                <input type="text" class="form-control" id="commNm" placeholder="공통코드명" name="commNm" value="${yjsCommDtVO.commNm}">
            </div>
        </div>
        <div class="col-auto">
            <label class="sr-only" for="commDesc">공통코드설명</label>
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">공통코드설명</div>
                </div>
                <input type="text" class="form-control" id="commDesc" placeholder="공통코드설명" name="commDesc" value="${yjsCommDtVO.commDesc}">
            </div>
        </div>
        <div class="form-row align-items-center">
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
            <th scope="col">공통코드</th>
            <th scope="col">공통코드명</th>
            <th scope="col">공통코드설명</th>
        </tr>
        </thead>
        <tbody>
            <c:forEach var="list" items="${yjsCommCdList}" varStatus="status">
                <tr>
                    <td scope="row"><c:out value="${status.count}" /></td>
                    <td><a href="<c:url value='/yjsCommCdForm?commCd=${list.commCd}' />">${list.commCd}</a></td>
                    <td>${list.commNm}</td>
                    <td>${list.commDesc}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>

</html>
