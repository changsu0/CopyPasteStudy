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

<h3>Yjs Common DT List</h3>
<br />

<form:form action="/yjsCommDtList" method="get">
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
            <label class="sr-only" for="commDtCd">상세코드</label>
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">상세코드</div>
                </div>
                <input type="text" class="form-control" id="commDtCd" placeholder="상세코드" name="commDtCd" value="${yjsCommDtVO.commDtCd}">
            </div>
        </div>
        <div class="col-auto">
            <label class="sr-only" for="commDtNm">상세코드명</label>
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">상세코드명</div>
                </div>
                <input type="text" class="form-control" id="commDtNm" placeholder="상세코드명" name="commDtNm" value="${yjsCommDtVO.commDtNm}">
            </div>
        </div>
        <div class="col-auto">
            <label class="sr-only" for="commDtDesc">상세코드설명</label>
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">상세코드설명</div>
                </div>
                <input type="text" class="form-control" id="commDtDesc" placeholder="상세코드설명" name="commDtDesc" value="${yjsCommDtVO.commDtDesc}">
            </div>
        </div>
        <div class="col-auto">
            <label class="sr-only" for="sortOrder">상세코드순서</label>
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">상세코드순서</div>
                </div>
                <input type="text" class="form-control" id="sortOrder" placeholder="상세코드순서" name="sortOrder" value="${yjsCommDtVO.sortOrder}">
            </div>
        </div>
        <div class="col-auto">
            <label class="sr-only" for="commDtGrp">상세코드그룹</label>
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">상세코드그룹</div>
                </div>
                <input type="text" class="form-control" id="commDtGrp" placeholder="상세코드그룹" name="commDtGrp" value="${yjsCommDtVO.commDtGrp}">
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
            <th scope="col">상세코드</th>
            <th scope="col">상세코드명</th>
            <th scope="col">상세코드설명</th>
            <th scope="col">상세코드순서</th>
            <th scope="col">상세코드그룹</th>
        </tr>
        </thead>
        <tbody>
            <c:forEach var="list" items="${yjsCommDtList}" varStatus="status">
                <tr>
                    <td scope="row"><c:out value="${status.count}" /></td>
                    <td>${list.commCd}</td>
                    <td><a href="<c:url value='/yjsCommDtForm?commCd=${list.commCd}&commDtCd=${list.commDtCd}' />">${list.commDtCd}</a></td>
                    <td>${list.commDtNm}</td>
                    <td>${list.commDtDesc}</td>
                    <td>${list.sortOrder}</td>
                    <td>${list.commDtGrp}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>

</html>
