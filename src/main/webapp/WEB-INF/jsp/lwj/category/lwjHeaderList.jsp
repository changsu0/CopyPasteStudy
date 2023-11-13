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

<h3>CATEGORY HEADER LIST</h3>
<br />

<form:form action="/selectLwjCategoryHeaderList" method="get">
    <div class="form-row align-items-center">
        <div class="col-auto">
            <label class="sr-only" for="catg_hd_cd">catg_hd_cd</label>
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">헤더 코드</div>
                </div>
                <input type="text" class="form-control" id="catg_hd_cd" placeholder="헤더 코드" name="catg_hd_cd" value="${lwjCategoryVO.catgHdCd}">
            </div>
        </div>
        <div class="col-auto">
            <label class="sr-only" for="catg_hd_nm">catg_hd_nm</label>
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">헤더 이름</div>
                </div>
                <input type="text" class="form-control" id="catg_hd_nm" placeholder="헤더 이름" name="catg_hd_nm" value="${lwjCategoryVO.catgHdNm}">
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
            <th scope="col">헤더 코드</th>
            <th scope="col">헤더 이름</th>
        </tr>
        </thead>
        <tbody>
            <c:forEach var="list" items="${selectLwjCategoryHeaderList}" varStatus="status">
                <tr>
                    <td scope="row"><c:out value="${status.count}" /></td>
                    <td><a href="<c:url value='/selectLwjCategoryHeaderForm?catg_Hd_Cd=${list.catgHdCd}' />">${list.catgHdCd}</a></td>
                    <td><a href="<c:url value='/selectLwjCategoryDetailList?catg_Hd_Nm=${list.catgHdNm}' />">${list.catgHdNm}</a></td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>

</html>
