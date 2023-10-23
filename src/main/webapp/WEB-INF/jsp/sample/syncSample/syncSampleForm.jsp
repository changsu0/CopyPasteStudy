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

<h3>Sample등록</h3>
<br />

<div>
    <form:form id="frm" name="frm" action="/syncSampleFormSave" method="post">
        <div class="form-group">
            <label for="userId">userId</label>
            <input type="text" class="form-control" id="userId" placeholder="userId" name="userId" value="${sampleVO.userId}">
        </div>
        <div class="form-group">
            <label for="userName">userName</label>
            <input type="text" class="form-control" id="userName" placeholder="userName" name="userName" value="${sampleVO.userName}">
        </div>
        <div class="form-group">
            <label for="userPhone">userPhone</label>
            <input type="text" class="form-control" id="userPhone" placeholder="userPhone" name="userPhone" value="${sampleVO.userPhone}">
        </div>
        <div class="form-group">
            <label for="userPhone">부서코드</label>
            <input type="text" class="form-control" id="deptCode" placeholder="deptCode" name="deptCode" value="${sampleVO.deptCode}">
        </div>
        <button name="action" value="insert" type="submit" class="btn btn-success">저장</button>
        <button name="action" value="update" type="submit" class="btn btn-success">수정</button>
        <button name="action" value="delete" type="submit" class="btn btn-danger">삭제</button>
    </form:form>
</body>

</html>
