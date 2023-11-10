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
    <c:when test="${aseMusicVO.title == null}">
        <h3>ASE MUSIC LIST 등록</h3>
    </c:when>
    <c:otherwise>
        <h3>ASE MUSIC LIST 수정</h3>
    </c:otherwise>
</c:choose>
<br />
<div>
    <form:form id="frm" name="frm" action="/aseMusicFormSave" method="post">
        <div class="form-group">
            <label for="title">제목</label>
            <c:if test="${aseMusicVO.title != null}">
            <input type="text" class="form-control" id="title" placeholder="제목" name="title" max="5" value="${aseMusicVO.title}" readonly>
            </c:if>
            <c:if test="${aseMusicVO.title == null}">
                <input type="text" class="form-control" id="title" placeholder="제목" name="title" max="5" value="${aseMusicVO.title}">
            </c:if>
        </div>
        <div class="form-group">
            <label for="artist">아티스트</label>
            <input type="text" class="form-control" id="artist" placeholder="아티스트" name="artist" value="${aseMusicVO.artist}">
        </div>
        <div class="form-group">
            <label for="genre">장르</label>
            <input type="text" class="form-control" id="genre" placeholder="장르" name="genre" value="${aseMusicVO.genre}">
        </div>
        <div class="form-group">
            <label for="genre">발매일</label>
            <input type="text" class="form-control" id="releaseDate" placeholder="발매일" name="releaseDate" value="${aseMusicVO.releaseDate}">
        </div>

        <c:choose>
            <c:when test="${aseMusicVO.title == null}">
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
