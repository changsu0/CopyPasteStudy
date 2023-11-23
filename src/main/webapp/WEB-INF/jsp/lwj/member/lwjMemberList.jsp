<%--
  Created by IntelliJ IDEA.
  User: leewoojin
  Date: 2023. 11. 21.
  Time: 오후 02:35
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

<h3>회원가입 리스트</h3>
<br />


<form:form action="/lwjMemberList" method="get">
    <div class="form-row align-items-center">
        <div class="col-auto">
            <label class="sr-only" for="memName">mem_name</label>
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">이름</div>
                </div>
                <input type="text" class="form-control" id="memName" placeholder="이름" name="memName" value="${lwjMemberVO.memName}">
            </div>
        </div>
        <div class="col-auto">
            <label class="sr-only" for="memRegNum">mem_reg_num</label>
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">주민번호</div>
                </div>
                <input type="text" class="form-control" id="memRegNum" placeholder="주민번호" name="memRegNum" value="${lwjMemberVO.memRegNum}">
            </div>
        </div>
        <div class="col-auto">
            <label class="sr-only" for="memPhone">mem_phone</label>
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">전화번호</div>
                </div>
                <input type="text" class="form-control" id="memPhone" placeholder="전화번호" name="memPhone" value="${lwjMemberVO.memPhone}">
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
            <th scope="col">No</th>
            <th scope="col">이름</th>
            <th scope="col">전화번호</th>
            <th scope="col">주민번호</th>
            <th scope="col">취미</th>
            <th scope="col">골라</th>
            <th scope="col">설명</th>
            <th scope="col">승인여부</th>
        </tr>
        </thead>
        <tbody>
            <c:forEach var="list" items="${lwjMemberList}" varStatus="status">
                <tr>
                    <td scope="row"><c:out value="${status.count}" /></td>
                    <td>${list.memName}</td>
                    <td>${list.memPhone}</td>
                    <td>${list.memRegNum}</td>
                    <td>${list.memChk}</td>
                    <td>${list.memRdo}</td>
                    <td>${list.memDesc}</td>
                    <td><input type="button" class="btn btn-info" value="승인" onClick="location.href='/lwjMemberForm?memUid=${list.memUid}'"></td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>

</html>
