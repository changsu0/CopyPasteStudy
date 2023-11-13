<%--
  Created by IntelliJ IDEA.
  User: leewoojin
  Date: 2023. 11. 10.
  Time: 오후 11:58
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

<h3>CATEGORY DETAIL LIST</h3>
<br />
    <table class="table table-striped">
        <thead>
        <tr>
            <th scope="col">#</th>
            <th scope="col">헤더 코드</th>
            <th scope="col">디테일 코드</th>
            <th scope="col">디테일 이름</th>
        </tr>
        </thead>
        <tbody>
            <c:forEach var="list" items="${selectLwjCategoryDetailList}" varStatus="status">
                <tr>
                    <td scope="row"><c:out value="${status.count}" /></td>
                    <td>${list.catgHdCd}</td>
                    <td>${list.catgDtCd}</td>
                    <td>${list.catgDtNm}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>

</html>
