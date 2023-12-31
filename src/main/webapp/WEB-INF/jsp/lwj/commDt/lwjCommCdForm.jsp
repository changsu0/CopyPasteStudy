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
    <c:when test="${lwjCommCdForm.commCd == null}">
        <h3>공통코드 등록</h3>
    </c:when>
    <c:otherwise>
        <h3>공통코드 수정</h3>
    </c:otherwise>
</c:choose>
<br />

<div>
    <!-- action = 데이터 저장할 이름 => URL -->
    <form:form id="frm" name="frm" action="/lwjcommCdSave" method="post">
        <div class="form-group">
            <label>공통코드</label>
            <c:if test="${lwjCommCdForm.commCd != null}">
                <input type ="text" class="form-control" name="commCd" maxlength="20" value="${lwjCommCdForm.commCd}" readonly>
            </c:if>
            <c:if test="${lwjCommCdForm.commCd == null}">
                <input type ="text" class="form-control" name="commCd" maxlength="20" value="${lwjCommCdForm.commCd}">
            </c:if>
        </div>
        </div>
        <div class="form-group">
            <label>공통코드명</label>
            <input type="text" class="form-control" name="CommNm" maxlength="50" value="${lwjCommCdForm.commNm}">
        </div>
        <div class="form-group">
            <label>공통코드설명</label>
            <input type="text" class="form-control" name="commDesc" maxlength="50" value="${lwjCommCdForm.commDesc}">
        </div>
        <c:choose>
            <c:when test="${lwjCommCdForm.commCd == null}">
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