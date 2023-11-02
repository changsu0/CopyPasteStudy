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

<h3>ASE STUDY LIST</h3>
<br />

<form:form action="/aseStudyList" method="get">
    <div class="form-row align-items-center">
        <div class="col-auto">
            <label class="sr-only" for="title">TITLE</label>
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">TITLE</div>
                </div>
                <input type="text" class="form-control" id="title" placeholder="TITLE" name="title" value="${aseStudyVO.title}">
            </div>
        </div>
        <div class="col-auto">
            <label class="sr-only" for="comment1">comment</label>
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">comment</div>
                </div>
                <input type="text" class="form-control" id="comment1" placeholder="COMMENT" name="comment1" value="${aseStudyVO.comment1}">
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
            <th scope="col">내용</th>
        </tr>
        </thead>
        <tbody>
            <c:forEach var="list" items="${aseStudyList}" varStatus="status">
                <tr>
                    <td scope="row"><c:out value="${status.count}" /></td>
                    <td><a href="<c:url value='/syncSampleForm?userId=${list.title}' />">${list.title}</a></td>
                    <td>${list.comment1}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>

</html>
