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

<h3>ASE CTFC LIST</h3>
<br />

<form:form action="/aseCtfcHdList" method="get">
    <div class="form-row align-items-center">
        <div class="col-auto">
            <label class="sr-only" for="ctfcCd">TITLE</label>
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">자격증코드</div>
                </div>
                <input type="text" class="form-control" id="ctfcCd" placeholder="자격증코드" name="ctfcCd" value="${aseCtfcVO.ctfcCd}">
            </div>
        </div>
        <div class="col-auto">
            <label class="sr-only" for="ctfcNm">artist</label>
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">자격증코드명</div>
                </div>
                <input type="text" class="form-control" id="ctfcNm" placeholder="자격증코드명" name="ctfcNm" value="${aseCtfcVO.ctfcNm}">
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
            <th scope="col">자격증코드</th>
            <th scope="col">자격증코드명</th>
        </tr>
        </thead>
        <tbody>
            <c:forEach var="list" items="${aseCtfcList}" varStatus="status">
                <tr>
                    <td scope="row"><c:out value="${status.count}" /></td>
                    <td><a href="<c:url value='/aseCtfcForm?ctfcCd=${list.ctfcCd}' />">${list.ctfcCd}</a></td>
                    <td><a href="<c:url value='/aseCtfcDtList?ctfcCd=${list.ctfcCd}' />">${list.ctfcNm}</a></td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>

</html>
