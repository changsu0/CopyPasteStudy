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

<h3>ASE CATG HD LIST</h3>
<br />

<form:form action="/aseCatgHdList" method="get">
    <div class="form-row align-items-center">
        <div class="col-auto">
            <label class="sr-only" for="catgHdCd">TITLE</label>
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">HD코드</div>
                </div>
                <input type="text" class="form-control" id="catgHdCd" placeholder="HD코드" name="catgHdCd" value="${aseCatgVO.catgHdCd}">
            </div>
        </div>
        <div class="col-auto">
            <label class="sr-only" for="catgHdNm">artist</label>
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">HD코드명</div>
                </div>
                <input type="text" class="form-control" id="catgHdNm" placeholder="HD코드명" name="catgHdNm" value="${aseCatgVO.catgHdNm}">
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
            <th scope="col">HD코드</th>
            <th scope="col">HD코드명</th>
        </tr>
        </thead>
        <tbody>
            <c:forEach var="list" items="${aseCatgHdList}" varStatus="status">
                <tr>
                    <td scope="row"><c:out value="${status.count}" /></td>
                    <td><a href="<c:url value='/aseCatgHdForm?catgHdCd=${list.catgHdCd}' />">${list.catgHdCd}</a></td>
                    <td><a href="<c:url value='/aseCatgDtList?catgHdCd=${list.catgHdCd}' />">${list.catgHdNm}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>

</html>
