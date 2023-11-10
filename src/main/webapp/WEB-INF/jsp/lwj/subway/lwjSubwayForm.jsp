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

<h3>Lwj Subway 등록&수정</h3>
<br />

<div>
    <form:form id="frm" name="frm" action="/lwjSubwaySave" method="post">
        <div class="form-group">
            <label for="line">num</label>
            <input type="text" class="form-control" id="num" placeholder="num" name="num" value="${selectLwjSubwayForm.num}">
        </div>
        <div class="form-group">
            <label for="line">line</label>
            <input type="text" class="form-control" id="line" placeholder="line" name="line" value="${selectLwjSubwayForm.line}">
        </div>
        <div class="form-group">
            <label for="name">name</label>
            <input type="text" class="form-control" id="name" placeholder="name" name="name" value="${selectLwjSubwayForm.name}">
        </div>
        <c:choose>
            <c:when test="${selectLwjSubwayForm.num == null}">
            </c:when>
            <c:otherwise>
                <button name="action" value="insert" type="submit" class="btn btn-success">저장</button>
                <button name="action" value="update" type="submit" class="btn btn-success">수정</button>
                <button name="action" value="delete" type="submit" class="btn btn-danger">삭제</button>
            </c:otherwise>
        </c:choose>
    </form:form>
</body>

</html>
