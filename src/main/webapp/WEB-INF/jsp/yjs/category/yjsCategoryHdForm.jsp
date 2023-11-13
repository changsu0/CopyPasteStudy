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
    <c:when test="${empty yjsCategoryVO.catgHdCd}">
        <h3>YJS Category HD List 등록</h3>
    </c:when>
    <c:otherwise>
        <h3>YJS Category HD List 수정 및 삭제</h3>
    </c:otherwise>
</c:choose>
<br />

<div>
    <form:form id="frm" name="frm" action="/yjsCategoryHDFormSave" method="post">
        <div class="form-group">
            <label for="catgHdCd">HD Code</label>
            <c:choose>
                <c:when test="${empty yjsCategoryVO.catgHdCd}">
                    <input type="text" class="form-control" id="catgHdCd" placeholder="HD Code" name="catgHdCd" value="${yjsCategoryVO.catgHdCd}">
                </c:when>
                <c:otherwise>
                    <input type="text" class="form-control" id="catgHdCd" placeholder="HD Code" name="catgHdCd" value="${yjsCategoryVO.catgHdCd}" readonly>
                </c:otherwise>
            </c:choose>
        </div>
        <div class="form-group">
            <label for="catgHdNm">HD Name</label>
            <input type="text" class="form-control" id="catgHdNm" placeholder="HD Name" name="catgHdNm" value="${yjsCategoryVO.catgHdNm}">
        </div>
        <c:choose>
        <c:when test="${empty yjsCategoryVO.catgHdCd}">
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
