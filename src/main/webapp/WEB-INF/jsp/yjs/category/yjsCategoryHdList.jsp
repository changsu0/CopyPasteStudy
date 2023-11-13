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

<h3>Yjs Category HD List</h3>
<br />

<form:form action="/yjsCategoryHDList" method="get">
    <div class="form-row align-items-center">
        <div class="col-auto">
            <label class="sr-only" for="catgHdCd">HD Code</label>
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">HD Code</div>
                </div>
                <input type="text" class="form-control" id="catgHdCd" placeholder="HD Code" name="catgHdCd" value="${yjsCategoryVO.catgHdCd}">
            </div>
        </div>
        <div class="col-auto">
            <label class="sr-only" for="catgHdNm">HD Name</label>
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">HD Name</div>
                </div>
                <input type="text" class="form-control" id="catgHdNm" placeholder="HD Name" name="catgHdNm" value="${yjsCategoryVO.catgHdNm}">
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
            <th scope="col">HD Code</th>
            <th scope="col">HD Name</th>
        </tr>
        </thead>
        <tbody>
            <c:forEach var="list" items="${selectYjsCategoryHD}" varStatus="status">
                <tr>
                    <td scope="row"><c:out value="${status.count}" /></td>
                    <td><a href="<c:url value='/yjsCategoryHdForm?catgHdCd=${list.catgHdCd}' />">${list.catgHdCd}</a></td>
                    <td><a href="<c:url value='/yjsCategoryDtList?catgHdCd=${list.catgHdCd}' />">${list.catgHdNm}</a></td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>

</html>
