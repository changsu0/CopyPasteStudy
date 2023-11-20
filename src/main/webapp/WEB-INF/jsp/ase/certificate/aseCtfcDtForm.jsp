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
    <c:when test="${aseCtfcVO.ctfcDtCd == null}">
        <h3>ASE CTFC DT LIST 등록</h3>
    </c:when>
    <c:otherwise>
        <h3>ASE CTFC DT LIST 수정</h3>
    </c:otherwise>
</c:choose>
<br />
<div>
    <form:form id="frm" name="frm" action="/aseCtfcDtFormSave" method="post">
        <div class="form-group">
            <label for="ctfcCd">자격증코드</label>
            <input type="text" class="form-control" id="ctfcCd" placeholder="자격증코드" name="ctfcCd" value="${aseCtfcVO.ctfcCd}" readonly>
        </div>
        <div class="form-group">
            <label for="ctfcDtCd">자격증상세코드</label>
            <c:choose>
                <c:when test="${aseCtfcVO.ctfcDtCd == null}">
                    <input type="text" class="form-control" id="ctfcDtCd" placeholder="자격증상세코드" name="ctfcDtCd" value="${aseCtfcVO.ctfcDtCd}">
                </c:when>
                <c:otherwise>
                    <input type="text" class="form-control" id="ctfcDtCd" placeholder="자격증상세코드" name="ctfcDtCd" value="${aseCtfcVO.ctfcDtCd}" readonly>
                </c:otherwise>
            </c:choose>
        </div>
        <div class="form-group">
            <label for="ctfcDtNm">자격증상세코드명</label>
            <input type="text" class="form-control" id="ctfcDtNm" placeholder="자격증코드명" name="ctfcDtNm" value="${aseCtfcVO.ctfcDtNm}">
        </div>

        <c:choose>
            <c:when test="${aseCtfcVO.ctfcDtCd == null}">
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
