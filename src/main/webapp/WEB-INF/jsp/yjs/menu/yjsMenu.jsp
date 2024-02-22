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
<jsp:include page="/WEB-INF/jsp/common/navYJS.jsp" />

<h3>Yjs Menu</h3>
<br />
<form id="searchMenu" onsubmit="return false">
    <div class="form-row align-items-center">
        <div class="col-auto">
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">메뉴ID</div>
                </div>
                <input type="text" class="form-control" id="menuIdSel" name="menuId">
            </div>
        </div>
        <div class="col-auto">
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">메뉴명</div>
                </div>
                <input type="text" class="form-control" id="menuNmSel" name="menuNm">
            </div>
        </div>
        <div class="col-auto">
            <button id="selectMenu" name="" class="btn btn-info" type="submit">조회</button>
            <button id="menuInsert" name="" class="btn btn-success" type="submit">insert</button>
            <button id="menuUpdate" name="" class="btn btn-warning" type="submit">update</button>
            <button id="menuDelete" name="" class="btn btn-danger" type="submit">delete</button>
            <button id="selClean" name="" class="btn btn-secondary" type="submit" style="display: none">선택취소</button>
        </div>
    </div>
</form>
<form id="inputMenu" onsubmit="return false">
    <div class="form-row align-items-center">
        <div class="col-auto">
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">메뉴ID</div>
                </div>
                <input type="text" class="form-control" id="menuId" name="menuId">
            </div>
        </div>
        <div class="col-auto">
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">메뉴명</div>
                </div>
                <input type="text" class="form-control" id="menuNm" name="menuNm">
            </div>
        </div>
        <div class="col-auto">
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">상위메뉴ID</div>
                </div>
                <input type="text" class="form-control" id="menuUpId" name="menuUpId">
            </div>
        </div>
        <div class="col-auto">
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">정렬순서</div>
                </div>
                <input type="number" class="form-control" id="sortOrder" name="sortOrder">
            </div>
        </div>
        <div class="col-auto">
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">URL</div>
                </div>
                <input type="text" class="form-control" id="menuUrl" name="menuUrl">
            </div>
        </div>
        <div class="col-auto">
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">사용여부</div>
                </div>
                <input type="text" class="form-control" id="useYn" name="useYn">
            </div>
        </div>
    </div>
</form>
<div id="tableDiv" style="width: 100%;">
    <table id="menuGrid" class="display">
        <thead>
        <tr>
            <th>메뉴ID</th>
            <th>메뉴명</th>
            <th>상위메뉴ID</th>
            <th>정렬순서</th>
            <th>URL</th>
            <th>사용여부</th>
        </tr>
        </thead>
    </table>
</div>
</body>

<script>
    let table = new DataTable('#menuGrid',{
        select: {
            style: 'single'
        },
        columns: [
            { data: 'menuId' },
            { data: 'menuNm' },
            { data: 'menuUpId' },
            { data: 'sortOrder' },
            { data: 'menuUrl' },
            { data: 'useYn' }
        ],
        columnDefs: [
            { "defaultContent": "-", "targets": "_all" }
        ]
    });

    table.on('click', 'tbody tr', function () {
        let rowData = table.row(this).data();
        console.log(rowData);
        getChkedRow(rowData);
    });
    const getChkedRow = function(rowData){
        $('#menuId').val(rowData.menuId);
        $('#menuNm').val(rowData.menuNm);
        $('#menuUpId').val(rowData.menuUpId);
        $('#sortOrder').val(rowData.sortOrder);
        $('#menuUrl').val(rowData.menuUrl);
        $('#useYn').val(rowData.useYn);
        $('#menuId').attr("readonly",true);
        $("#menuInsert").prop('disabled', true);
        $("#menuUpdate").prop('disabled', false);
        $("#menuDelete").prop('disabled', false);
        $("#selClean").show();
    }

    $(document).ready(function() {
        selectMenulist();

        $('#selectMenu').click(function () {
            selectMenulist();
        });
        $('#menuInsert').click(function () {
            insertYjs();
        });
        $('#menuUpdate').click(function () {
            updateYjs();
        });
        $('#menuDelete').click(function () {
            console.log($('#menuId').val());
            delYjs($('#menuId').val());
        });
        $('#selClean').click(function () {
            inputClean();
        });
    });

    const inputClean = function() {
        $('#menuId').val("");
        $('#menuNm').val("");
        $('#menuUpId').val("");
        $('#sortOrder').val("");
        $('#menuUrl').val("");
        $('#useYn').val("");
        $('#menuId').removeAttr("readonly");
        $("#selClean").hide();
        $("#menuInsert").prop('disabled', false);
        $("#menuUpdate").prop('disabled', true);
        $("#menuDelete").prop('disabled', true);
    }

    const selectMenulist = function() {
        JS_COMMON.fn_callAjaxForm('/selectMenuListYjs', $('#searchMenu').serialize(), 'get', cb_selectMaster, true);
    }
    function cb_selectMaster(result) {
        inputClean();
        table.clear().draw();
        table.rows.add( result.data ).draw();
    }

    const insertYjs = function() {
       console.log($('#inputMenu').serialize());
       JS_COMMON.fn_callAjaxForm('/yjsMenuInsert', $('#inputMenu').serialize(), 'get', insertYjsCB, true);
    }
    const insertYjsCB = function() {
        alert("insert 완료");
        selectMenulist();
    }
    const updateYjs = function() {
        console.log($('#inputMenu').serialize());
        JS_COMMON.fn_callAjaxForm('/yjsMenuUpdate', $('#inputMenu').serialize(), 'get', updateYjsCB, true);
    }
    const updateYjsCB = function() {
        alert("update 완료");
        selectMenulist();
    }
    const delYjs = function(menuId) {
        console.log(menuId);
        JS_COMMON.fn_callAjaxJson('/yjsMenuDelete', {menuId:menuId}, 'post', delYjsCB, true);
    }
    const delYjsCB = function() {
        alert("delete 완료");
        selectMenulist();
    }

</script>
</html>
