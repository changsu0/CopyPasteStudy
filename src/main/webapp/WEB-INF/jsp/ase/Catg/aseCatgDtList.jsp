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

<h3>ASE CATG DT LIST</h3>
<br />

<form:form action="/aseCatgDtList" method="get">
    <div class="form-row align-items-center">
        <div class="col-auto">
            <button type="button" onclick="location.href='/aseCatgDtForm?catgHdCd=${aseCatgVO.catgHdCd}'" class="btn btn-success">추가</button>
        </div>
    </div>
</form:form>
<br /><br />
    <table class="table table-striped">
        <thead>
        <tr>
            <th scope="col">#</th>
            <th scope="col">HD코드</th>
            <th scope="col">DT코드</th>
            <th scope="col">DT코드명</th>
        </tr>
        </thead>
        <tbody>
            <c:forEach var="list" items="${aseCatgDtList}" varStatus="status">
                <tr>
                    <td scope="row"><c:out value="${status.count}" /></td>
                    <td>${list.catgHdCd}</td>
                    <td><a href="<c:url value='/aseCatgDtForm?catgDtCd=${list.catgDtCd}' />">${list.catgDtCd}</a></td>
                    <td>${list.catgDtNm}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>

</html>
