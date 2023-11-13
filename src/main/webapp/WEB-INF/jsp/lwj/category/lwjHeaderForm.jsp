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
    <c:when test="${selectLwjCategoryHeaderForm.catgHdCd == null}">
        <h3>CATEGORY HEADER 등록</h3>
    </c:when>
    <c:otherwise>
        <h3>CATEGORY HEADER 수정</h3>
    </c:otherwise>
</c:choose>
<br />

<div>
    <form:form id="frm" name="frm" action="/lwjCategoryHeaderSave" method="post">
        <div class="form-group">
            <label for="catg_hd_cd">헤더 코드</label>
            <c:if test="${selectLwjCategoryHeaderForm.catgHdCd != null}">
                <input type="text" class="form-control" id="catg_hd_cd" placeholder="헤더 코드" name="catg_hd_cd" value="${selectLwjCategoryHeaderForm.catgHdCd}" readonly>
            </c:if>
            <c:if test="${selectLwjCategoryHeaderForm.catgHdCd == null}">
                <input type="text" class="form-control" id="catg_hd_cd" placeholder="헤더 코드" name="catg_hd_cd" value="${selectLwjCategoryHeaderForm.catgHdCd}">
            </c:if>
        </div>
        <div class="form-group">
            <label for="catg_hd_nm">헤더 이름</label>
            <input type="text" class="form-control" id="catg_hd_nm" placeholder="헤더 이름" name="catg_hd_nm" value="${selectLwjCategoryHeaderForm.catgHdNm}">
        </div>
        <c:choose>
            <c:when test="${selectLwjCategoryHeaderForm.catgHdCd == null}">
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
