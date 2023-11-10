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
    <c:when test="${empty yjsMusicalVO.title}">
        <h3>YJS Musical List 등록</h3>
    </c:when>
    <c:otherwise>
        <h3>YJS Musical List 수정 및 삭제</h3>
    </c:otherwise>
</c:choose>
<br />

<div>
    <form:form id="frm" name="frm" action="/yjsMusicalFormSave" method="post">
        <div class="form-group">
            <label for="title">제목</label>
            <c:choose>
                <c:when test="${empty yjsMusicalVO.title}">
                    <input type="text" class="form-control" id="title" placeholder="제목" name="title" value="${yjsMusicalVO.title}">
                </c:when>
                <c:otherwise>
                    <input type="text" class="form-control" id="title" placeholder="제목" name="title" value="${yjsMusicalVO.title}" readonly>
                </c:otherwise>
            </c:choose>
        </div>
        <div class="form-group">
            <label for="place">공연장소</label>
            <input type="text" class="form-control" id="place" placeholder="공연장소" name="place" value="${yjsMusicalVO.place}">
        </div>
        <div class="form-group">
            <label for="firstSchedule">첫공연일</label>
            <c:choose>
                <c:when test="${empty yjsMusicalVO.title}">
                    <input type="text" class="form-control" id="firstSchedule" placeholder="첫공연일" name="firstSchedule" value="${yjsMusicalVO.firstSchedule}">
                </c:when>
                <c:otherwise>
                    <input type="text" class="form-control" id="firstSchedule" placeholder="첫공연일" name="firstSchedule" value="${yjsMusicalVO.firstSchedule}" readonly>
                </c:otherwise>
            </c:choose>
        </div>
        <div class="form-group">
            <label for="lastSchedule">막공연일</label>
            <input type="text" class="form-control" id="lastSchedule" placeholder="막공연일" name="lastSchedule" value="${yjsMusicalVO.lastSchedule}">
        </div>
        <c:choose>
        <c:when test="${empty yjsMusicalVO.title}">
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
