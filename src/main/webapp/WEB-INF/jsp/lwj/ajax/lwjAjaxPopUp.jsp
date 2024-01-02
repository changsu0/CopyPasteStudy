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
    <meta charset="utf-8">
    <%@ include file="/WEB-INF/jsp/common/header.jsp" %>
</head>
<body>

<h3>공통코드</h3>
<br />

<form id="formID" onsubmit="return false" method="get">
    <div class="form-row align-items-center">
        <div class="col-auto">
            <label class="sr-only" for="commCd">comm_cd</label>
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">공통코드</div>
                </div>
                <input type="text" class="form-control" id="commCd" placeholder="공통코드" name="commCd" value="${lwjCommDtVO.commCd}">
            </div>
        </div>
        <div class="col-auto">
            <label class="sr-only" for="commNm">comm_nm</label>
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">공통코드명</div>
                </div>
                <input type="text" class="form-control" id="commNm" placeholder="공통코드명" name="commNm" value="${lwjCommDtVO.commNm}">
            </div>
        </div>
        <div class="col-auto">
            <label class="sr-only" for="commDesc">comm_desc</label>
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">공통코드설명</div>
                </div>
                <input type="text" class="form-control" id="commDesc" placeholder="공통코드설명" name="commDesc" value="${lwjCommDtVO.commDesc}">
            </div>
        </div>
        <div class="col-auto">
            <button id="ajaxListSearch" name="action" class="btn btn-info">조회</button>
        </div>
    </div>
</form>
</body>
<script>
    $(document).ready(function () {
        $('#ajaxListSearch').click(function () {
            parentCall();
        });
    });

    const parentCall = () => {
        opener.parent.parentAlert($('#commCd').val(), $('#commNm').val(), $('#commDesc').val());
    }
</script>
</html>
