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
<h3>YJS JQ Multi Rows</h3>
<br />

<div>
    <form:form id="frm" name="frm" action="/insertYjsJqMultiRows" method="post">
        <div class="form-row align-items-center">
            <div class="col-auto">
                <label class="sr-only">text</label>
                <div class="input-group mb-2">
                    <div class="input-group-prepend">
                        <div class="input-group-text">text</div>
                    </div>
                    <input type="text" class="form-control" id="inpVal" placeholder="text" name="inpVal" value="">
                </div>
            </div>
            <div class="col-auto">
                <label class="sr-only">select</label>
                <div class="input-group mb-2">
                    <div class="input-group-prepend">
                        <div class="input-group-text">select</div>
                    </div>
                    <select class="form-control" id="selVal" name="selVal">
                        <option value="">-선택-</option>
                        <option value="sel1">선택1</option>
                        <option value="sel2">선택2</option>
                        <option value="sel3">선택3</option>
                        <option value="sel4">선택4</option>
                        <option value="sel5">선택5</option>
                    </select>
                </div>
            </div>
            <div class="col-auto">
                <label class="sr-only">rdo</label>
                <div class="input-group mb-2">
                    <div class="input-group-prepend">
                        <div class="input-group-text">rdo</div>
                    </div>
                    <div class="form-control">
                        <input type='radio' name='rdoVal' value='rdo1'/>라디오1
                        <input type='radio' name='rdoVal' value='rdo2'/>라디오2
                    </div>
                </div>
            </div>
            <div class="col-auto">
                <label class="sr-only">chk</label>
                <div class="input-group mb-2">
                    <div class="input-group-prepend">
                        <div class="input-group-text">chk</div>
                    </div>
                    <div class="form-control">
                        <input type="checkbox" name="chkVal" value="chk1">체크1
                        <input type="checkbox" name="chkVal" value="chk2">체크2
                        <input type="checkbox" name="chkVal" value="chk3">체크3
                    </div>
                </div>
            </div>
            <div class="col-auto">
                <button name="action" value="listService" class="btn btn-info" type="submit">저장_1</button>
            </div>
            <div class="col-auto">
                <button name="action" value="listMybatis" class="btn btn-info" type="submit" disabled="disabled">저장_2</button>
            </div>
        </div>
        <br/>
    </form:form>
        <div class="form-row align-items-center">
            <div class="col-auto">
                <label class="sr-only">select_left</label>
                <div class="input-group mb-2">
                    <select class="form-control" multiple="multiple" id="selLeft" name="selLeft" style="width: 120px; height: 180px; text-align: center;">
                        <option value="sel1">sel1</option>
                        <option value="sel2">sel2</option>
                        <option value="sel3">sel3</option>
                        <option value="sel4">sel4</option>
                        <option value="sel5">sel5</option>
                        <option value="sel6">sel6</option>
                        <option value="sel7">sel7</option>
                    </select>
                </div>
            </div>
            <div class="col-auto">
                <button id="goLeft" class="btn btn-info" type="submit">&lt;</button>
            </div>
            <div class="col-auto">
                <button id="goRight" class="btn btn-info" type="submit">&gt;</button>
            </div>
            <div class="col-auto">
                <label class="sr-only">select_right</label>
                <div class="input-group mb-2">
                    <select class="form-control" multiple="multiple" id="selRight" name="selRight" style="width: 120px; height: 180px; text-align: center;">

                    </select>
                </div>
            </div>
        </div>
        <script>
            window.onload = function() {
                $('#goRight').on('click', function() {
                   var options = "";
                   $.each($('#selLeft option:selected'), function (index, item) {
                       options += "<option value=\"" + $(item).val() + "\">" + $(item).text() + "</option>";
                   })
                    $('#selRight').append(options);
                    $('#selLeft option:selected').remove();
                });
                $('#goLeft').on('click', function() {
                    var options = "";
                    $.each($('#selRight option:selected'), function (index, item) {
                        options += "<option value=\"" + $(item).val() + "\">" + $(item).text() + "</option>";
                    })
                    $('#selLeft').append(options);
                    $('#selRight option:selected').remove();
                });
            }
        </script>
</body>

</html>
