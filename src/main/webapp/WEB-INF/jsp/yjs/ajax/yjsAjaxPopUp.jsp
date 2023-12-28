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

<h3>Yjs Common Cd Ajax List</h3>
<br />
<form:form id="frmSearch" onsubmit="return false">
    <div class="form-row align-items-center">
        <div class="col-auto">
            <label class="sr-only" for="commCd">공통코드</label>
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">공통코드</div>
                </div>
                <input type="text" class="form-control" id="commCd" placeholder="공통코드" name="commCd" value="${yjsCommDtVO.commCd}">
            </div>
        </div>
        <div class="col-auto">
            <label class="sr-only" for="commNm">공통코드명</label>
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">공통코드명</div>
                </div>
                <input type="text" class="form-control" id="commNm" placeholder="공통코드명" name="commNm" value="${yjsCommDtVO.commNm}">
            </div>
        </div>
        <div class="col-auto">
            <label class="sr-only" for="commDesc">공통코드설명</label>
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">공통코드설명</div>
                </div>
                <input type="text" class="form-control" id="commDesc" placeholder="공통코드설명" name="commDesc" value="${yjsCommDtVO.commDesc}">
            </div>
        </div>
        <div class="col-auto">
            <button id="search" class="btn btn-info">확인</button>
        </div>
    </div>
</form:form>
</body>

<script>
    $(document).ready(function() {
        $('#search').click(function () {
            parentCall();
        });
    });

    function parentCall() {
        code = $('#commCd').val();
        name = $('#commNm').val();
        desc = $('#commDesc').val();
        opener.parent.parentAlert(code, name, desc);
    }
</script>
</html>
