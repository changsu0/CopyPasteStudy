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
    <link rel="stylesheet" href="https://cdn.datatables.net/1.13.7/css/jquery.dataTables.min.css" />
    <link rel="stylesheet" href="https://cdn.datatables.net/select/1.7.0/css/select.dataTables.min.css" />
    <script src="https://cdn.datatables.net/1.13.7/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/select/1.3.3/js/dataTables.select.min.js"></script>
</head>
<body>
<jsp:include page="/WEB-INF/jsp/common/nav.jsp" />
<h3>ASE 공통코드화면</h3>
<br />
<form id="frmSearch" onsubmit="return false">
    <div class="form-row align-items-center">
        <div class="col-auto">
            <label class="sr-only" for="commNm">공통코드명</label>
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">공통코드명</div>
                </div>
                <input type="text" class="form-control" id="commNm" placeholder="공통코드명" name="commNm">
            </div>
        </div>

        <div class="col-auto">
            <button class="btn btn-info" id="btnSearch">조회</button>
        </div>
    </div>
</form>

<div class="form-row align-items-center">
    <div class="col-auto col-6">
        <div id="demo_info" class="box"></div>
        <table id="main" class="display">
            <thead>
            <tr>
                <th>공통코드</th>
                <th>코드명</th>
                <th>코드설명</th>
                <th>생성자</th>
                <th>생성일시</th>
            </tr>
            </thead>
        </table>
    </div>

    <div class="col-auto col-6">
        <div id="demo_subInfo" class="box"></div>
        <table id="sub" class="display">
            <thead>
            <tr>
                <th>공통코드</th>
                <th>상세코드</th>
                <th>상세코드명</th>
                <th>상세설명</th>
                <th>사용여부</th>
                <th>생성자</th>
                <th>생성일시</th>
            </tr>
            </thead>
        </table>
    </div>

</div>

</body>
<script>

    $(document).ready(function() {
        selectGridList();
    })

    let mainTable = new DataTable('#main', {
        columns: [
            { data: 'commCd' },
            { data: 'commNm' },
            { data: 'commDesc' },
            { data: 'createUserId' },
            { data: 'createDt' }
        ]
    });

    const selectGridList = function() {
        JS_COMMON.fn_callAjaxForm('/selectCommCdListAse', $('#frmSearch').serialize(), 'GET', cb_selectGridList, true);
    }
    const cb_selectGridList = function( result ){
        console.log(result);
        mainTable.clear();
        mainTable.rows.add(result.data).draw();
    }


    let subTable = new DataTable('#sub', {
        columns: [
            { data: 'commDtlCd' },
            { data: 'commCd' },
            { data: 'commDtlNm' },
            { data: 'commDtlDesc' },
            { data: 'useYn' },
            { data: 'createUserId' },
            { data: 'createDt' },
            { data: 'updateUserId' },
            { data: 'updateDt' }
        ]
    });

    const selectSubGridList = function() {
        JS_COMMON.fn_callAjaxForm('/selectAseDataTBList', $('#frmSearch').serialize(), 'GET', cb_selectSubGridList, true);
    }

    const cb_selectSubGridList = function( result ){
        subTable.clear();
        subTable.rows.add(result.data).draw();
    }

</script>

</html>
