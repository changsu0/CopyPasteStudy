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
            <label for="catgHdCd">헤더 코드</label>
            <c:if test="${lwj.catgHdCd != null}">
                <input type="text" class="form-control" id="catgHdCd" placeholder="헤더 코드" name="catgHdCd" value="${lwj.catgHdCd}" readonly>
            </c:if>
            <c:if test="${lwj.catgHdCd == null}">
                <input type="text" class="form-control" id="catgHdCd" placeholder="헤더 코드" name="catgHdCd" value="${lwj.catgHdCd}">
            </c:if>
        </div>
        <div class="form-group">
            <label for="catgHdNm">헤더 이름</label>
            <input type="text" class="form-control" id="catgHdNm" placeholder="헤더 이름" name="catgHdNm" value="${lwj.catgHdNm}">
        </div>
        <c:choose>
            <c:when test="${lwj.catgHdCd == null}">
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
