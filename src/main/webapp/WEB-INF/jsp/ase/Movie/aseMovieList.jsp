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

<h3>ASE MOVIE LIST</h3>
<br />

<form:form action="/aseMovieList" method="get">
    <div class="form-row align-items-center">
        <div class="col-auto">
            <label class="sr-only" for="title">TITLE</label>
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">제목</div>
                </div>
                <input type="text" class="form-control" id="title" placeholder="제목" name="title" value="${aseMovieVO.title}">
            </div>
        </div>
        <div class="col-auto">
            <label class="sr-only" for="content">comment</label>
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">줄거리</div>
                </div>
                <input type="text" class="form-control" id="content" placeholder="줄거리" name="content" value="${aseMovieVO.content}">
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
                <input type="text" class="form-control" id="genre" placeholder="장르" name="genre" value="${aseMovieVO.genre}">
            </div>
        </div>
        <div class="col-auto">
            <label class="sr-only" for="runningTime">runningTime</label>
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">상영 시간</div>
                </div>
                <input type="text" class="form-control" id="runningTime" placeholder="상영 시간" name="runningTime" value="${aseMovieVO.runningTime}">
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
            <th scope="col">줄거리</th>
            <th scope="col">장르</th>
            <th scope="col">상영 시간</th>
        </tr>
        </thead>
        <tbody>
            <c:forEach var="list" items="${aseMovieList}" varStatus="status">
                <tr>
                    <td scope="row"><c:out value="${status.count}" /></td>
                    <td><a href="<c:url value='/syncSampleForm?userId=${list.title}' />">${list.title}</a></td>
                    <td>${list.content}</td>
                    <td>${list.genre}</td>
                    <td>${list.runningTime}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>

</html>
