<%--
  Created by IntelliJ IDEA.
  User: kimchangsu
  Date: 2023. 12. 18.
  Time: 오후 9:24
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
    <c:when test="${lwjCountryForm.code == null}">
        <h3>Lwj Country 등록</h3>
    </c:when>
    <c:otherwise>
        <h3>Lwj Country 수정</h3>
    </c:otherwise>
</c:choose>
<br />

<div>
    <form:form id="frm" name="frm" action="/lwjCountrySave" method="post">
        <div class="form-group">
            <label for="code">국가코드</label>
            <c:if test="${lwjCountryForm.code != null}">
                <input type="text" class="form-control" id="code" placeholder="국가코드" name="code" value="${lwjCountryForm.code}" readonly>
            </c:if>
            <c:if test="${lwjCountryForm.code == null}">
                <input type="text" class="form-control" id="code" placeholder="국가코드" name="code" value="${lwjCountryForm.code}">
            </c:if>
        </div>
        <div class="form-group">
            <label for="name">국가이름</label>
            <input type="text" class="form-control" id="name" placeholder="국가이름" name="name" value="${lwjCountryForm.name}">
        </div>
        <c:choose>
            <c:when test="${lwjCountryForm.code == null}">
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
