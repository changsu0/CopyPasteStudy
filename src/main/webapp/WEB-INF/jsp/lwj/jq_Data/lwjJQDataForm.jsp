<%--
  Created by IntelliJ IDEA.
  User: leewoojin
  Date: 2023. 11. 20.
  Time: 오후 09:47
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
<h3>다중 Row 저장</h3>
<br />

<form:form id="frm" name="frm" action="/insertLwjJqMultiRows" method="post">
    <div class="form-row align-items-center">
        <div class="col-auto">
            <label class="sr-only" for="memName">Input</label>
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">Input</div>
                </div>
                <input type="text" class="form-control" id="memName" placeholder="" name="inpVal" size="10" value="${lwjMemberVO.memName}">
            </div>
        </div>
        <div class="col-auto">
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">선택1</div>
                </div>
                <select id="lwjselect1" name="selVal" multiple="multiple" size="5">
                    <option value="sel1">Sel1</option>
                    <option value="sel2">Sel2</option>
                    <option value="sel3">Sel3</option>
                    <option value="sel4">Sel4</option>
                    <option value="sel5">Sel5</option>
                </select>
            </div>
        </div>
        <div class="col-auto">
            <div>
                <input type="button" onclick="selectMove('btnLeft')" value=">">
            </div>
            <br>
            <div>
                <input type="button" onclick="selectMove('btnRight')" value="<">
            </div>
        </div>
        <div class="col-auto">
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">선택2</div>
                </div>
                <select id="lwjselect2" name="selVal" multiple="multiple" size="5">

                </select>
            </div>
        </div>
        <div class="col-auto">
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">라디오</div>
                </div>
                <div class="form-control">
                    <input type="radio" name="rdoVal" value="rdo1"> 라디오1
                    <input type="radio" name="rdoVal" value="rdo2"> 라디오2
                </div>
            </div>
        </div>
        <div class="col-auto">
            <label class="sr-only">취미</label>
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">체크</div>
                </div>
                <div class="form-control">
                    <input type="checkbox" name="chkVal" value="chk1">체크1
                    <input type="checkbox" name="chkVal" value="chk2">체크2
                    <input type="checkbox" name="chkVal" value="chk3">체크3
                </div>
            </div>
        </div>
        <div class="col-auto">
            <button name="action" class="btn btn-info" type="submit">저장</button>
        </div>
    </div>
</form:form>
<script>
    const selectMove = function(btnID) {
        if(btnID == 'btnLeft') { // >
            //lwjselect1 : 왼쪽셀렉트박스 id
            $("#lwjselect1").find("option").each(function() {
                if(this.selected) {
                    // lwjselect2 : 오른쪽 셀렉트박스 id
                    $("#lwjselect2").append("<option value='" + this.value +"'>" + this.text +"</option>");
                    $(this).remove();
                }
            });
        } else if (btnID == 'btnRight') { // <
            $("#lwjselect2").find("option").each(function() {
                if(this.selected) {
                    // lwjselect1 : 왼쪽 셀렉트박스 id
                    $("#lwjselect1").append("<option value='" + this.value +"'>" + this.text +"</option>");
                    $(this).remove();
                }
            });
        }
    }
</script>
</body>
</html>