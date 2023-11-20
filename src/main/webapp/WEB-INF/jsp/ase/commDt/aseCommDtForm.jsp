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
    <c:when test="${aseCommDtVO.commDtCd == null}">
        <h3>공통 상세코드 등록</h3>
    </c:when>
    <c:otherwise>
        <h3>공통 상세코드 수정</h3>
    </c:otherwise>
</c:choose>
<br />

<div>
    <form:form id="frm" name="frm" action="/aseCommDtFormSave" method="post">
        <div class="form-group">
            <label>공통 코드</label>
            <select class="form-control" name="commCd">
                <c:forEach var="list" items="${aseCommCd}">
                    <c:choose>
                        <c:when test="${aseCommDtVO.commCd == list.commCd}">
                            <option value="${list.commCd}" selected>${list.commNm}</option>
                        </c:when>
                        <c:otherwise>
                            <option value="${list.commCd}" >${list.commNm}</option>
                        </c:otherwise>
                    </c:choose>
                </c:forEach>
            </select>
        </div>
        <div class="form-group">
            <label>상세 코드</label>
            <input type="text" class="form-control" name="commDtCd" maxlength="20" value="${aseCommDtVO.commDtCd}">
        </div>
        <div class="form-group">
            <label>상세 코드명</label>
            <input type="text" class="form-control" name="commDtNm" maxlength="50" value="${aseCommDtVO.commDtNm}">
        </div>
        <div class="form-group">
            <label>상세 코드설명</label>
            <input type="text" class="form-control" name="commDtDesc" maxlength="500" value="${aseCommDtVO.commDtDesc}">
        </div>
        <div class="form-group">
            <label>정렬 순서</label>
            <input type="number" class="form-control" name="sortOrder" min="1" max="20" value="${aseCommDtVO.sortOrder}">
        </div>
        <div class="form-group">
            <label>상세 코드 그룹</label>
            <input type="text" class="form-control" name="commDtGrp" maxlength="20" value="${aseCommDtVO.commDtGrp}">
        </div>
        <c:choose>
            <c:when test="${aseCommDtVO.commDtCd == null}">
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