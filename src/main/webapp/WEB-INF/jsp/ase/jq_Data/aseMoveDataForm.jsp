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
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>
<head>
    <%@ include file="/WEB-INF/jsp/common/header.jsp" %>
</head>
<body>
<jsp:include page="/WEB-INF/jsp/common/nav.jsp" />

<h3>Move Data</h3>
<br />
<div>
    <form:form id="frm" name="frm" action="/insertAseMultiRow" method="post">
        <div class="col-auto">
            <input type="text" class="" id="inpVal" placeholder="" name="inpVal">
        </div>
        <div class="col-auto">
            <select name="selVal" id="selVal">
                <option value="">선택1~5</option>
                <option value="Sel1">1</option>
                <option value="Sel2">2</option>
                <option value="Sel3">3</option>
                <option value="Sel4">4</option>
                <option value="Sel5">5</option>
            </select>
        </div>
        <div class="col-auto">
            <input type="radio" name="rdoVal" value="rdo1">라디오1
            <input type="radio" name="rdoVal" value="rdo2">라디오2
        </div>
        <div class="col-auto">
            <input type="checkbox" name="chkVal" value="Chk1">체크1
            <input type="checkbox" name="chkVal" value="Chk2">체크2
            <input type="checkbox" name="chkVal" value="Chk3">체크3
        </div>

        <button name="action" value="insert" type="submit" class="btn btn-success" >저장</button>

    </form:form>
</body>

</html>
