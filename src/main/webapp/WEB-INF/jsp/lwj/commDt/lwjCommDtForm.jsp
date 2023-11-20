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
    <c:when test="${lwjCommDtForm.commDtCd == null}">
        <h3>공통상세코드 등록</h3>
    </c:when>
    <c:otherwise>
        <h3>공통상세코드 수정</h3>
    </c:otherwise>
</c:choose>
<br />

<div>
    <!-- action = 데이터 저장할 이름 => URL -->
    <form:form id="frm" name="frm" action="/lwjcommDtSave" method="post">
        <div class="form-group">
            <label>공통코드</label>
            <c:if test="${lwjCommDtForm.commDtCd != null}">
                <select class="form-control" name="commCd">
                    <c:forEach var="list" items="${lwjCommCdList}" varStatus="status">
                        <c:if test ="${lwjCommDtForm.commCd eq list.commCd}">
                            <option value="${list.commCd}" selected="selected">${list.commNm}</option>
                        </c:if>
                        <c:if test ="${lwjCommDtForm.commCd != list.commCd}">
                            <option value="${list.commCd}">${list.commNm}</option>
                        </c:if>
                    </c:forEach>
                </select>
            </c:if>
            <c:if test="${lwjCommDtForm.commDtCd == null}">
                <select class="form-control" name="commCd">
                    <c:forEach var="list" items="${lwjCommCdList}" varStatus="status">
                        <option value="${list.commCd}">${list.commNm}</option>
                    </c:forEach>
                </select>
            </c:if>
        </div>
        <div class="form-group">
            <label>상세코드</label>
            <c:if test="${lwjCommDtForm.commDtCd != null}">
                <input type="text" class="form-control" name="commDtCd" maxlength="20" value="${lwjCommDtForm.commDtCd}" readonly>
            </c:if>
            <c:if test="${lwjCommDtForm.commDtCd == null}">
                <input type="text" class="form-control" name="commDtCd" maxlength="20" value="${lwjCommDtForm.commDtCd}">
            </c:if>
        </div>
        </div>
        <div class="form-group">
            <label>상세코드명</label>
            <input type="text" class="form-control" name="commDtNm" maxlength="50" value="${lwjCommDtForm.commDtNm}">
        </div>
        <div class="form-group">
            <label>상세코드설명</label>
            <input type="text" class="form-control" name="commDtDesc" maxlength="500" value="${lwjCommDtForm.commDtDesc}">
        </div>
        <div class="form-group">
            <label>정렬순서</label>
            <input type="number" class="form-control" name="sortOrder" min="1" max="20" value="${lwjCommDtForm.sortOrder}">
        </div>
        <div class="form-group">
            <label>상세코드그룹</label>
            <input type="text" class="form-control" name="commDtGrp" maxlength="20" value="${lwjCommDtForm.commDtGrp}">
        </div>
        <c:choose>
            <c:when test="${lwjCommDtForm.commDtCd == null}">
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