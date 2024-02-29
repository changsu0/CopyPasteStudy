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
    <link rel="stylesheet" href="https://cdn.datatables.net/fixedcolumns/5.0.0/css/fixedColumns.dataTables.css" />
    <script src="https://cdn.datatables.net/1.13.7/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/select/1.3.3/js/dataTables.select.min.js"></script>

    <link type="text/css" href="//gyrocode.github.io/jquery-datatables-checkboxes/1.2.12/css/dataTables.checkboxes.css" rel="stylesheet" />
    <script type="text/javascript" src="//gyrocode.github.io/jquery-datatables-checkboxes/1.2.12/js/dataTables.checkboxes.min.js"></script>
</head>
<body>
<jsp:include page="/WEB-INF/jsp/common/navASE.jsp" />
<div class="col-auto">
    <h3>ASE 권한</h3>
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
            <div class="col-auto">
                <button class="btn btn-success" id="btnSave">저장</button>
            </div>
        </div>
    </form>
</div>


<hr/>
<div class="form-row">
    <div class="col-6">
        <div class="col-auto">
            <div id="auth_info" class="box"></div>
            <table id="auth" class="display" style="width:100%">
                <thead>
                <tr>
                    <th>권한그룹ID</th>
                    <th>권한그룹명</th>
                    <th>생성자</th>
                    <th>생성날짜</th>
                    <th>수정자</th>
                    <th>수정날짜</th>
                </tr>
                </thead>
            </table>
        </div>
    </div>

    <div class="col-6">
        <div class="col-auto">
            <div id="menu_info" class="box"></div>
            <table id="menu" class="display" style="width:100%">
                <thead>
                <tr>
                    <th></th>
                    <th>메뉴ID</th>
                    <th>메뉴명</th>
                    <th>사용여부</th>
                </tr>
                </thead>
            </table>
        </div>
    </div>
</div>

</body>
<script>

    $(document).ready(function() {

        selectAuthGridList();
        selectMenuList();

        $('#btnSearch').click(function (){
            selectAuthGridList();
        });

        $('#btnSave').click(function (){
            saveAuth();
        });

    })

    /**
     * authGrid 생성
     * @type {DataTable}
     */
    let authTable = new DataTable('#auth', {
       columns: [
            { data: 'authGrpId' },
            { data: 'authGrpNm' },
            { data: 'createUserId' },
            { data: 'createDt' },
            { data: 'updateUserId' },
            { data: 'updateDt' }
        ],
        columnDefs: [
            { 'defaultContent': "-",
                    'targets': "_all"
            }
        ],
        'select': {
            'style': 'single'
        }
    });
    
    const selectAuthGridList = function() {
        JS_COMMON.fn_callAjaxForm('/selectAuthListAse', $('#frmSearch').serialize(), 'GET', cb_selectAuthGridList, true);
    }

    /**
     * 조회 callBack함수 : 조회된 데이터로 authGrid 그리기
     * @param result
     */
    const cb_selectAuthGridList = function( result ){
        authTable.clear();
        authTable.rows.add(result.data).draw();
    }

    /**
     * selected된 row의 데이터를 INPUT에 뿌리기
     */
    authTable.on( 'select', function ( e, dt, type, indexes ) {
        if ( type === 'row' ) {
            let selectedData = authTable.rows( indexes ).data();
            let selectedCd = selectedData[0].authGrpId;

            checkedMenuList(selectedCd);
        }
    } );
    /**
     * selected된 row의 데이터를 INPUT에 뿌리기
     */
    authTable.on( 'deselect', function ( e, dt, type, indexes ) {
        if ( type === 'row' ) {
            $('input:checkbox').prop('checked',false);
        }
    } );
    
    /**
     * menuGrid 생성
     * @type {DataTable}
     */
    let menuTable = new DataTable('#menu', {
        columns: [
            {
                orderable: false, // 정렬기능
                className: 'table-active dt-body-center',
                render: function (data, type, full, meta) {
                    return '<input type="checkbox" name="menuChk" id="'+full.menuId+'" value="">';
                }
            },
            { data: 'menuId' },
            { data: 'menuNm' },
            { data: 'useYn' }
        ],
        columnDefs: [
            {
                'defaultContent': '-',
                'targets': '_all'
            }
        ]
    });

    const selectMenuList = function() {
        JS_COMMON.fn_callAjaxForm('/selectMenuListAse', $('#frmSearch').serialize(), 'GET', cb_selectMenuList, true);
    }

    /**
     * 조회 callBack함수 : 조회된 데이터로 authGrid 그리기
     * @param result
     */
    const cb_selectMenuList = function( result ){
        menuTable.clear();
        menuTable.rows.add(result.data).draw();
    }

    /**
     * 선택한 MasterGrid의 Detail 데이터 조회
     * @param authGrpId selected된 commCd
     */
    const checkedMenuList = function( authGrpId ) {
        JS_COMMON.fn_callAjaxJson('/selectAuthMenuListAse', {
            authGrpId: authGrpId
        }, 'POST', cb_checkedMenuList);
    }

    /**
     * 조회 callBack함수 : 조회된 데이터로 checkBox
     * @param result
     */
    const cb_checkedMenuList = function( result ){
        $('input:checkbox').prop('checked',false);
        let authMenuData = result.data; //메뉴권한 데이터

        for (let j = 0; j < authMenuData.length; j++) {
            $('#'+authMenuData[j].menuId).prop('checked',true);
        }

    }

    const saveAuth = function() {
        JS_COMMON.fn_callAjaxForm('/insertMenuAse', $('#frmInput').serialize(), 'GET', cb_saveAuth, true);
    }

    const cb_saveAuth = function( result ){
        JS_COMMON.fn_formReset('frmInput');
        selectAuthGridList();
    }
</script>

</html>
