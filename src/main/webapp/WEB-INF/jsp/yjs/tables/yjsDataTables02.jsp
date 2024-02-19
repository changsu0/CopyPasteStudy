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
    <script src="https://code.jquery.com/jquery-3.7.0.js"></script>
    <script src="https://cdn.datatables.net/1.13.7/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/select/1.7.0/js/dataTables.select.min.js"></script>
    <link rel="stylesheet" href="https://cdn.datatables.net/1.13.7/css/jquery.dataTables.min.css" />
</head>
<body>
<jsp:include page="/WEB-INF/jsp/common/nav.jsp" />

<h3>Yjs DataTables_공통코드</h3>
<br />
<form id="selectComm" onsubmit="return false">
    <div class="form-row align-items-center">
        <div class="col-auto">
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">공통코드</div>
                </div>
                <input type="text" class="form-control" id="commCd" name="commCd">
            </div>
        </div>
        <div class="col-auto">
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">공통코드명</div>
                </div>
                <input type="text" class="form-control" id="commNm" name="commNm">
            </div>
        </div>
        <div class="col-auto">
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">공통코드설명</div>
                </div>
                <input type="text" class="form-control" id="commDesc" name="commDesc">
            </div>
        </div>
        <div class="col-auto">
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">생성자</div>
                </div>
                <input type="text" class="form-control" id="createUserId" name="createUserId">
            </div>
        </div>
        <div class="col-auto">
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">생성일시</div>
                </div>
                <input type="text" class="form-control" id="createDt" name="createDt">
            </div>
        </div>
    </div>
    <div class="form-row align-items-center">
        <div class="col-auto">
            <button id="selectCom" name="" class="btn btn-info" type="submit">조회</button>
            <button id="oneSelectComm" name="" class="btn btn-info" type="submit">One조회</button>
            <button id="commInsert" name="" class="btn btn-success" type="submit">insert</button>
            <button id="commUpdate" name="" class="btn btn-success" type="submit">update</button>
            <button id="commDelete" name="" class="btn btn-danger" type="submit">delete</button>
        </div>
    </div>
</form>
<div id="tableDiv" style="display: flex; width: 100%;">
    <div  style="flex: 90">
        <table id="masterGrid" class="display">
            <thead>
            <tr>
                <th>공통코드</th>
                <th>공통코드명</th>
                <th>공통코드설명</th>
                <th>생성자</th>
                <th>생성일시</th>
            </tr>
            </thead>
        </table>
    </div>
    <div style="flex: 1"></div>
    <div style="flex: 110">
        <table id="DetailGrid" class="display">
            <thead>
            <tr>
                <th>공통코드</th>
                <th>상세코드</th>
                <th>상세코드명</th>
                <th>상세코드설명</th>
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
    let table = new DataTable('#masterGrid',{
        select: {
            style: 'single'
        },
        columns: [
            { data: 'commCd' },
            { data: 'commNm' },
            { data: 'commDesc' },
            { data: 'createUserId' },
            { data: 'createDt' }
        ]
    });
    let tableDtl = new DataTable('#DetailGrid',{
        columns: [
            { data: 'commCd' },
            { data: 'commDtlCd' },
            { data: 'commDtlNm' },
            { data: 'commDtlDesc' },
            { data: 'useYn' },
            { data: 'createUserId' },
            { data: 'createDt' }
        ]
    });

    $(document).ready(function() {
        selectMasterlist();

        $('#selectCom').click(function () {
            selectMasterlist();
        });
        $('#oneSelectComm').click(function () {
            selectMasterOne();
        });
        $('#commInsert').click(function(){
            insertYjs();
        });
        $('#commUpdate').click(function(){
            updateYjs();
        });
        $('#commDelete').click(function(){
            delYjs();
        });
    });

    // insert
    // let paramMap = {commCd:commCd};
    let paramListI = [
        {commCd:'4yjs', commNm:4, commDesc:4, createUserId: 'yjs'},
        {commCd:'5yjs', commNm:5, commDesc:5, createUserId: 'yjs'},
        {commCd:'6yjs', commNm:6, commDesc:6, createUserId: 'yjs'}
    ];
    let paramListU = [
        {commCd:'4yjs', commNm:44, commDesc:44, updateUserId: 'yjs'},
        {commCd:'5yjs', commNm:55, commDesc:55, updateUserId: 'yjs'},
        {commCd:'6yjs', commNm:66, commDesc:66, updateUserId: 'yjs'}
    ];
    let paramListD = [
        {commCd:'4yjs'},
        {commCd:'5yjs'},
        {commCd:'6yjs'}
    ];
    // paramList.push(paramMap);

    const insertYjs = function() {
        JS_COMMON.fn_callAjaxJson('/insertCommCdYjs', paramListI, 'post', insertYjsCB, true);
    }
    const insertYjsCB = function() {
        selectMasterlist();
    }
    const updateYjs = function() {
        JS_COMMON.fn_callAjaxJson('/updateCommCdYjs', paramListU, 'post', updateYjsCB, true);
    }
    const updateYjsCB = function() {
        selectMasterlist();
    }
    const delYjs = function() {
        JS_COMMON.fn_callAjaxJson('/deleteCommCdYjs', paramListD, 'post', delYjsCB, true);
    }
    const delYjsCB = function() {
        selectMasterlist();
    }

    table.on('click', 'tbody tr', function () {
        let rowData = table.row(this).data();
        console.log(rowData);
        selectDetaillist(rowData.commCd);
    });

    const selectMasterlist = function() {
        JS_COMMON.fn_callAjaxForm('/selectCommCdListYjs', $('#selectComm').serialize(), 'get', cb_selectMaster, true);
    }
    function cb_selectMaster(result) {
        table.clear().draw();
        table.rows.add( result.data ).draw();
    }

    const selectMasterOne = function() {
        JS_COMMON.fn_callAjaxForm('/selectCommCdOneYjs', $('#selectComm').serialize(), 'get', cb_selectMasterOne, true);
    }
    function cb_selectMasterOne(result) {
        console.log('Master One조회 결과');
        console.log(result);
    }

    const selectDetaillist = function(commCd) {
        JS_COMMON.fn_callAjaxJson('/selectCommDtlListYjs', {commCd:commCd}, 'post', cb_selectDetail, true);
    }
    function cb_selectDetail(result) {
        tableDtl.clear().draw();
        tableDtl.rows.add( result.data ).draw();
    }

    const selectDetailOne = function() {
        JS_COMMON.fn_callAjaxForm('/selectCommDtlOneYjs', $('#selectDtl').serialize(), 'get', cb_selectDetailOne, true);
    }
    function cb_selectDetailOne(result) {
        console.log('Detail One조회결과');
        console.log(result);
    }
</script>
</html>
