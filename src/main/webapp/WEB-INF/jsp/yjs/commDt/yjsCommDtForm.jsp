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
    <c:when test="${lwj.catgHdCd == null}">
        <h3>공통 상세코드 등록</h3>
    </c:when>
    <c:otherwise>
        <h3>공통 상세코드 수정</h3>
    </c:otherwise>
</c:choose>
<br />

<div>
    <!-- 데이터 저장 -->
    <form:form id="frm" name="frm" action="/yjsCommDtSave" method="post">
    <div class="form-group">
        <label>공통 코드</label>
        <select class="form-control" name="commCd">
            <option value="DBData">화면에보이는이름</option>
        </select>
    </div>
    <div class="form-group">
        <label>상세코드</label>
        <input type="text" class="form-control" name="commDtCd" maxlength="20" >
    </div>
    <div class="form-group">
        <label>상세코드명</label>
        <input type="text" class="form-control" name="commDtNm" maxlength="50" >
    </div>
    <div class="form-group">
        <label>상세코드설명</label>
        <input type="text" class="form-control" name="commDtDesc" maxlength="500" >
    </div>
    <div class="form-group">
        <label>정렬순서</label>
        <input type="number" class="form-control" name="sortOrder" min="1" maxlength="20" >
    </div>
    <div class="form-group">
        <label>상세코드그룹</label>
        <input type="text" class="form-control" name="commDtGrp" maxlength="20" >
    </div>
        <button name="action" value="insert" type="submit" class="btn btn-success">저장</button>
    </form:form>
</body>

</html>
