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
    <%@ include file="/WEB-INF/jsp/common/header.jsp" %>
</head>
<body>
<jsp:include page="/WEB-INF/jsp/common/nav.jsp" />
<c:choose>
    <c:when test="${yjsCommCdForm.commCd == null}">
        <h3>공통코드 등록</h3>
    </c:when>
    <c:otherwise>
        <h3>공통코드 수정 및 삭제</h3>
    </c:otherwise>
</c:choose>
<br />

<div>
    <!-- 데이터 저장 -->
    <form:form id="frm" name="frm" action="/yjsCommCdSave" method="post">
        <div class="form-group">
            <label>공통코드</label>
            <c:choose>
                <c:when test="${empty yjsCommCdForm.commCd}">
                    <input type="text" class="form-control" name="commCd" maxlength="20" value="${yjsCommCdForm.commCd}">
                </c:when>
                <c:otherwise>
                    <input type="text" class="form-control" name="commCd" maxlength="20" value="${yjsCommCdForm.commCd}" readonly>
                </c:otherwise>
            </c:choose>
        </div>
        <div class="form-group">
            <label>공통코드명</label>
            <input type="text" class="form-control" name="commNm" maxlength="20" value="${yjsCommCdForm.commNm}">
        </div>
        <div class="form-group">
            <label>공통코드설명</label>
            <input type="text" class="form-control" name="commDesc" maxlength="50" value="${yjsCommCdForm.commDesc}">
        </div>
        <c:choose>
        <c:when test="${yjsCommCdForm.commCd == null}">
            <button name="action" value="insert" type="submit" class="btn btn-success">저장</button>
        </c:when>
        <c:otherwise>
            <button name="action" value="update" type="submit" class="btn btn-success">수정</button>
            <button name="action" value="delete" type="submit" class="btn btn-danger">삭제</button>
        </c:otherwise>
        </c:choose>
    </form:form>
</body>

</html>
