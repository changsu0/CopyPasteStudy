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

<h3>Yjs Musical List</h3>
<br />

<form:form action="/yjsMusicalList" method="get">
    <div class="form-row align-items-center">
        <div class="col-auto">
            <label class="sr-only" for="title">제목</label>
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">제목</div>
                </div>
                <input type="text" class="form-control" id="title" placeholder="제목" name="title" value="${yjsMusicalVO.title}">
            </div>
        </div>
        <div class="col-auto">
            <label class="sr-only" for="place">공연장소</label>
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">공연장소</div>
                </div>
                <input type="text" class="form-control" id="place" placeholder="공연장소" name="place" value="${yjsMusicalVO.place}">
            </div>
        </div>
        <div class="form-row align-items-center">
            <div class="col-auto">
                <label class="sr-only" for="first_schedule">첫공연일</label>
                <div class="input-group mb-2">
                    <div class="input-group-prepend">
                        <div class="input-group-text">첫공연일</div>
                    </div>
                    <input type="text" class="form-control" id="first_schedule" placeholder="첫공연일" name="first_schedule" value="${yjsMusicalVO.firstSchedule}">
                </div>
            </div>
            <div class="col-auto">
                <label class="sr-only" for="last_schedule">막공연일</label>
                <div class="input-group mb-2">
                    <div class="input-group-prepend">
                        <div class="input-group-text">막공연일</div>
                    </div>
                    <input type="text" class="form-control" id="last_schedule" placeholder="막공연일" name="last_schedule" value="${yjsMusicalVO.lastSchedule}">
                </div>
            </div>
            <div class="col-auto">
                <button name="action" class="btn btn-info" type="submit">조회</button>
            </div>
        </div>
    </div>
</form:form>
<br /><br />
    <table class="table table-striped">
        <thead>
        <tr>
            <th scope="col">#</th>
            <th scope="col">제목</th>
            <th scope="col">공연장소</th>
            <th scope="col">첫공연일</th>
            <th scope="col">막공연일</th>
        </tr>
        </thead>
        <tbody>
            <c:forEach var="list" items="${selectYjsMusicalList}" varStatus="status">
                <tr>
                    <td scope="row"><c:out value="${status.count}" /></td>
                    <td><a href="<c:url value='/yjsMusicalForm?title=${list.title}' />">${list.title}</a></td>
                    <td>${list.place}</td>
                    <td>${list.firstSchedule}</td>
                    <td>${list.lastSchedule}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>

</html>
