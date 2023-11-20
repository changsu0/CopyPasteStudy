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

<h3>Yjs Category DT List</h3>
<br />
<div class="form-row align-items-center">
    <div class="col-auto">
        <button type="submit" class="btn btn-success" onclick="location.href='/yjsCategoryDtForm'">등록</button>
    </div>
</div>
<br /><br />
    <table class="table table-striped">
        <thead>
        <tr>
            <th scope="col">#</th>
            <th scope="col">HD Code</th>
            <th scope="col">DT Code</th>
            <th scope="col">DT Name</th>
        </tr>
        </thead>
        <tbody>
            <c:forEach var="list" items="${selectYjsCategoryDT}" varStatus="status">
                <tr>
                    <td scope="row"><c:out value="${status.count}" /></td>
                    <td>${list.catgHdCd}</td>
                    <td><a href="<c:url value='/yjsCategoryDtForm?catgHdCd=${list.catgHdCd}&catgDtCd=${list.catgDtCd}' />">${list.catgDtCd}</a></td>
                    <td>${list.catgDtNm}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>

</html>
