<%--
  Created by IntelliJ IDEA.
  User: leewoojin
  Date: 2023. 11. 10.
  Time: 오후 11:58
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
    <h3>회원가입 신청</h3>
<br />

<div>
    <!-- action = 데이터 저장할 이름 => URL -->
    <form:form id="frm" name="frm" action="/insertKcsMem" method="post">
        <div class="form-group">
            <label>이름</label>
            <input type="text" name="memName" maxlength="3" />
        </div>
        <div class="form-group">
            <label>전화번호</label>
            <select name="memPhone1" >
                <option value="010">010</option>
                <option value="011">011</option>
                <option value="012">012</option>
                <option value="013">013</option>
            </select> -
            <input type="text" name="memPhone2" maxlength="4" /> -
            <input type="text" name="memPhone3" maxlength="4" />
        </div>
        <div class="form-group">
            <label>주민번호</label>
            <input type="text" name="memRegNum1" maxlength="6" /> -
            <input type="text" name="memRegNum2" maxlength="7" />
        </div>
        <div class="form-group">
            <label>취미</label>
            <input type="checkbox" name="memChk" value="C" /> CRUD
            <input type="checkbox" name="memChk" value="Q" /> Query
            <input type="checkbox" name="memChk" value="F" /> Function
            <input type="checkbox" name="memChk" value="P" /> Procedure
        </div>
        <div class="form-group">
            <label>골라</label>
            <input type="radio" name="memRdo" value="E" /> 유럽
            <input type="radio" name="memRdo" value="A" /> 동남아
            <input type="radio" name="memRdo" value="J" /> 일본
        </div>
        <div class="form-group">
            <label>설명</label>
            <textarea name="memDesc" cols="20" rows="4"></textarea>
        </div>
        <button name="action" type="submit" class="btn btn-success">회원가입 신청</button>
    </form:form>
</body>
</html>