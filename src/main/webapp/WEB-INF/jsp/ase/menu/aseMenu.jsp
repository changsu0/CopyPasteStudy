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
<div class="col-auto">
    <h3>ASE 메뉴</h3>
</div>
<br />

<div class="form-row">
    <form id="frmSearch" onsubmit="return false">
        <div class="form-row">
            <div>
                <div class="col-auto">
                    <label class="sr-only" for="menuId">메뉴ID</label>
                    <div class="input-group mb-2">
                        <div class="input-group-prepend">
                            <div class="input-group-text">메뉴ID</div>
                        </div>
                        <input type="text" class="form-control" id="menuId" placeholder="메뉴ID" name="menuId">
                    </div>
                </div>
            </div>
            <div>
                <div class="col-auto">
                    <label class="sr-only" for="menuNm">메뉴명</label>
                    <div class="input-group mb-2">
                        <div class="input-group-prepend">
                            <div class="input-group-text">메뉴명</div>
                        </div>
                        <input type="text" class="form-control" id="menuNm" placeholder="메뉴명" name="menuNm">
                    </div>
                </div>
            </div>
            <div class="col-auto">
                <button class="btn btn-info" id="btnSearch">조회</button>
            </div>
        </div>
    </form>
</div>

<hr/>

<div class="form-row">
    <form id="frmInput" onsubmit="return false">
        <div class="form-row">
            <div>
                <div class="col-auto">
                    <label class="sr-only" for="menuId">메뉴ID</label>
                    <div class="input-group mb-2">
                        <div class="input-group-prepend">
                            <div class="input-group-text">메뉴ID</div>
                        </div>
                        <input type="text" class="form-control" id="menuIdI" placeholder="메뉴ID" name="menuId">
                    </div>
                </div>
            </div>
            <div>
                <div class="col-auto">
                    <label class="sr-only" for="menuNm">메뉴명</label>
                    <div class="input-group mb-2">
                        <div class="input-group-prepend">
                            <div class="input-group-text">메뉴명</div>
                        </div>
                        <input type="text" class="form-control" id="menuNmI" placeholder="메뉴명" name="menuNm">
                    </div>
                </div>
            </div>
            <div>
                <div class="col-auto">
                    <label class="sr-only" for="menuUpId">상위메뉴ID</label>
                    <div class="input-group mb-2">
                        <div class="input-group-prepend">
                            <div class="input-group-text">상위메뉴ID</div>
                        </div>
                        <input type="text" class="form-control" id="menuUpId" placeholder="상위메뉴ID" name="menuUpId">
                    </div>
                </div>
            </div>
            <div>
                <div class="col-auto">
                    <label class="sr-only" for="sortOrder">정렬순서</label>
                    <div class="input-group mb-2">
                        <div class="input-group-prepend">
                            <div class="input-group-text">정렬순서</div>
                        </div>
                        <input type="number" class="form-control" id="sortOrder" placeholder="정렬순서" name="sortOrder">
                    </div>
                </div>
            </div>
            <div>
                <div class="col-auto">
                    <label class="sr-only" for="useYn">사용여부</label>
                    <div class="input-group mb-2">
                        <div class="input-group-prepend">
                            <div class="input-group-text">사용여부</div>
                        </div>
                        <input type="text" class="form-control" id="useYn" placeholder="사용여부" name="useYn">
                    </div>
                </div>
            </div>
            <div>
                <div class="col-auto">
                    <label class="sr-only" for="menuUrl">메뉴URL</label>
                    <div class="input-group mb-2">
                        <div class="input-group-prepend">
                            <div class="input-group-text">메뉴URL</div>
                        </div>
                        <input type="text" class="form-control" id="menuUrl" placeholder="메뉴URL" name="menuUrl">
                    </div>
                </div>
            </div>
            <div class="col-auto">
                <button class="btn btn-success" id="btnInsert">INSERT</button>
            </div>
            <div class="col-auto">
                <button class="btn btn-warning" id="btnUpdate">UPDATE</button>
            </div>
            <div class="col-auto">
                <button class="btn btn-danger" id="btnDelete">DELETE</button>
            </div>
        </div>
    </form>
</div>

<hr/>

<div class="col-auto">
    <div id="demo_info" class="box"></div>
    <table id="menu" class="display" style="width:100%">
        <thead>
        <tr>
            <th>메뉴ID</th>
            <th>메뉴명</th>
            <th>상위코드ID</th>
            <th>정렬순서</th>
            <th>URL</th>
            <th>사용여부</th>
        </tr>
        </thead>
    </table>
</div>

</body>
<script>

    $(document).ready(function() {

        selectGridList();

        $('#btnSearch').click(function (){
            selectGridList();
        });

        $('#btnInsert').click(function (){
            insert();
        });

        $('#btnUpdate').click(function (){
            update();
        });

        $('#btnDelete').click(function (){
            fn_delete();
        });

    })

    /**
     * menuGrid 생성
     * @type {DataTable}
     */
    let menuTable = new DataTable('#menu', {
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
        ]
    });

    const selectGridList = function() {
        JS_COMMON.fn_callAjaxForm('/selectMenuListAse', $('#frmSearch').serialize(), 'GET', cb_selectGridList, true);
    }

    /**
     * 조회 callBack함수 : 조회된 데이터로 menuGrid 그리기
     * @param result
     */
    const cb_selectGridList = function( result ){
        menuTable.clear();
        menuTable.rows.add(result.data).draw();
    }

    const setInputValue = function(inputID, inputVal){
        $('#'+ inputID).val(inputVal);
    }

    /**
     * selected된 row의 데이터를 INPUT에 뿌리기
     */
    menuTable.on( 'select', function ( e, dt, type, indexes ) {
        if ( type === 'row' ) {
            let selectedData = menuTable.rows( indexes ).data();

            setInputValue('menuIdI',selectedData[0].menuId);
            setInputValue('menuNmI',selectedData[0].menuNm);
            setInputValue('menuUpId',selectedData[0].menuUpId);
            setInputValue('sortOrder',selectedData[0].sortOrder);
            setInputValue('useYn',selectedData[0].useYn);
            setInputValue('menuUrl',selectedData[0].menuUrl);
        }
    } );

    const insert = function() {
        JS_COMMON.fn_callAjaxForm('/insertMenuAse', $('#frmInput').serialize(), 'GET', cb_insert, true);
    }

    const cb_insert = function( result ){
        JS_COMMON.fn_formReset('frmInput');
        selectGridList();
    }

    const update = function() {
        JS_COMMON.fn_callAjaxForm('/updateMenuAse', $('#frmInput').serialize(), 'GET', cb_update, true);
    }

    const cb_update = function( result ){
        JS_COMMON.fn_formReset('frmInput');
        selectGridList();
    }

    const fn_delete = function() {
        JS_COMMON.fn_callAjaxForm('/updateUseYnAse', $('#frmInput').serialize(), 'GET', cb_delete);
    }

    const cb_delete = function( result ){
        JS_COMMON.fn_formReset('frmInput');
        selectGridList();
    }

</script>

</html>
