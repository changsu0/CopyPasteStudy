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
    <c:when test="${yjsCommDtForm.commDtCd == null}">
        <h3>공통 상세코드 등록</h3>
    </c:when>
    <c:otherwise>
        <h3>공통 상세코드 수정 및 삭제</h3>
    </c:otherwise>
</c:choose>
<br />

<div>
    <!-- 데이터 저장 -->
    <form:form id="frm" name="frm" action="/yjsCommDtSave" method="post">
        <div class="form-group">
            <label>공통 코드</label>
            <select class="form-control" name="commCd">
                <c:forEach var="list" items="${selectYjsCommCd}">
                    <c:choose>
                        <c:when test="${list.commCd eq yjsCommDtForm.commCd}">
                            <option selected="selected" disabled="disabled" value="${list.commCd}" >${list.commNm}</option>
                        </c:when>
                        <c:otherwise>
                            <option value="${list.commCd}" >${list.commNm}</option>
                        </c:otherwise>
                    </c:choose>
                </c:forEach>
<%--            <option value="DBData">화면에보이는이름</option>--%>
            </select>
        </div>
        <div class="form-group">
            <label>상세코드</label>
            <c:choose>
                <c:when test="${empty yjsCommDtForm.commDtCd}">
                    <input type="text" class="form-control" name="commDtCd" maxlength="20" value="${yjsCommDtForm.commDtCd}">
                </c:when>
                <c:otherwise>
                    <input type="text" class="form-control" name="commDtCd" maxlength="20" value="${yjsCommDtForm.commDtCd}" readonly>
                </c:otherwise>
            </c:choose>
        </div>
        <div class="form-group">
            <label>상세코드명</label>
            <input type="text" class="form-control" name="commDtNm" maxlength="50" value="${yjsCommDtForm.commDtNm}">
        </div>
        <div class="form-group">
            <label>상세코드설명</label>
            <input type="text" class="form-control" name="commDtDesc" maxlength="500" value="${yjsCommDtForm.commDtDesc}">
        </div>
        <div class="form-group">
            <label>정렬순서</label>
            <input type="number" class="form-control" name="sortOrder" min="1" maxlength="20" value="${yjsCommDtForm.sortOrder}">
        </div>
        <div class="form-group">
            <label>상세코드그룹</label>
            <input type="text" class="form-control" name="commDtGrp" maxlength="20" value="${yjsCommDtForm.commDtGrp}">
        </div>
        <c:choose>
        <c:when test="${yjsCommDtForm.commDtCd == null}">
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
