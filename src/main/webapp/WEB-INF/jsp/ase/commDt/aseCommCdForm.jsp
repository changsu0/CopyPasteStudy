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
    <%@ include file="/WEB-INF/jsp/common/header.jsp" %>
</head>
<body>
<jsp:include page="/WEB-INF/jsp/common/nav.jsp" />

<c:choose>
    <c:when test="${aseCommDtVO.commCd == null}">
        <h3>공통코드 등록</h3>
    </c:when>
    <c:otherwise>
        <h3>공통코드 수정</h3>
    </c:otherwise>
</c:choose>
<br />
<div>
    <form:form id="frm" name="frm" action="/aseCommCdFormSave" method="post">
        <div class="form-group">
            <label for="commCd">공통코드</label>
            <c:choose>
                <c:when test="${aseCommDtVO.commCd == null}">
                    <input type="text" class="form-control" id="commCd" placeholder="공통코드" name="commCd" value="${aseCommDtVO.commCd}">
                </c:when>
                <c:otherwise>
                <input type="text" class="form-control" id="commCd" placeholder="공통코드" name="commCd" value="${aseCommDtVO.commCd}" readonly>
                </c:otherwise>
            </c:choose>
        </div>
        <div class="form-group">
            <label for="commNm">공통코드명</label>
            <input type="text" class="form-control" id="commNm" placeholder="공통코드명" name="commNm" value="${aseCommDtVO.commNm}">
        </div>
        <div class="form-group">
            <label for="commDesc">공통코드설명</label>
            <input type="text" class="form-control" id="commDesc" placeholder="공통코드설명" name="commDesc" value="${aseCommDtVO.commDesc}">
        </div>

        <c:choose>
            <c:when test="${aseCommDtVO.commCd == null}">
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
