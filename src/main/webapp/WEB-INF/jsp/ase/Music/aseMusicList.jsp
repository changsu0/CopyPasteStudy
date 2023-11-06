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
    <meta charset="utf-8">
    <%@ include file="/WEB-INF/jsp/common/header.jsp" %>
</head>
<body>
<jsp:include page="/WEB-INF/jsp/common/nav.jsp" />

<h3>ASE MUSIC LIST</h3>
<br />

<form:form action="/aseMusicList" method="get">
    <div class="form-row align-items-center">
        <div class="col-auto">
            <label class="sr-only" for="title">TITLE</label>
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">제목</div>
                </div>
                <input type="text" class="form-control" id="title" placeholder="제목" name="title" value="${aseMusicVO.title}">
            </div>
        </div>
        <div class="col-auto">
            <label class="sr-only" for="artist">artist</label>
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">아티스트</div>
                </div>
                <input type="text" class="form-control" id="artist" placeholder="아티스트" name="artist" value="${aseMusicVO.artist}">
            </div>
        </div>
    </div>
    <div class="form-row align-items-center">
        <div class="col-auto">
            <label class="sr-only" for="genre">genre</label>
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">장르</div>
                </div>
                <input type="text" class="form-control" id="genre" placeholder="장르" name="genre" value="${aseMusicVO.genre}">
            </div>
        </div>
        <div class="col-auto">
            <label class="sr-only" for="releaseDate">releaseDate</label>
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">발매일</div>
                </div>
                <input type="text" class="form-control" id="releaseDate" placeholder="발매일" name="releaseDate" value="${aseMusicVO.releaseDate}">
            </div>
        </div>
        <div class="col-auto">
            <button name="action" class="btn btn-info" type="submit">조회</button>
        </div>
    </div>
</form:form>
<br /><br />
    <table class="table table-striped">
        <thead>
        <tr>
            <th scope="col">#</th>
            <th scope="col">제목</th>
            <th scope="col">아티스트</th>
            <th scope="col">장르</th>
            <th scope="col">발매</th>
        </tr>
        </thead>
        <tbody>
            <c:forEach var="list" items="${aseMusicList}" varStatus="status">
                <tr>
                    <td scope="row"><c:out value="${status.count}" /></td>
                    <td><a href="<c:url value='/aseMusicForm?title=${list.title}' />">${list.title}</a></td>
                    <td>${list.artist}</td>
                    <td>${list.genre}</td>
                    <td>${list.releaseDate}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>

</html>
