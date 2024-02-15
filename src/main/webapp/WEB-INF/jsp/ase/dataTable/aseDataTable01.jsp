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
    <h3>ASE 공통코드화면</h3>
</div>
<br />

<div class="form-row">
    <form id="frmSearch" onsubmit="return false">
        <div class="form-row">
            <div>
                <div class="col-auto">
                    <label class="sr-only" for="commCd">공통코드</label>
                    <div class="input-group mb-2">
                        <div class="input-group-prepend">
                            <div class="input-group-text">공통코드</div>
                        </div>
                        <input type="text" class="form-control" id="commCd" placeholder="공통코드" name="commCd">
                    </div>
                </div>
            </div>
            <div>
                <div class="col-auto">
                    <label class="sr-only" for="commNm">공통코드명</label>
                    <div class="input-group mb-2">
                        <div class="input-group-prepend">
                            <div class="input-group-text">공통코드명</div>
                        </div>
                        <input type="text" class="form-control" id="commNm" placeholder="공통코드명" name="commNm">
                    </div>
                </div>
            </div>
            <div class="col-auto">
                <button class="btn btn-info" id="btnSearch">조회</button>
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

<div class="form-row">
    <div class="col-5">
        <div class="col-auto">
            <div id="demo_info" class="box"></div>
            <table id="master" class="display" style="width:100%">
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
    </div>

    <div class="col-7">
        <div class="col-auto">
            <div id="demo_detailInfo" class="box"></div>
            <table id="detail" class="display" style="width:100%">
                <thead>
                <tr>
                    <th>공통코드</th>
                    <th>상세코드</th>
                    <th>상세명</th>
                    <th>상세설명</th>
                    <th>사용여부</th>
                    <th>생성자</th>
                    <th>생성일시</th>
                </tr>
                </thead>
            </table>
        </div>
    </div>
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
     * masterGrid 생성
     * @type {DataTable}
     */
    let masterTable = new DataTable('#master', {
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

    const selectGridList = function() {
        JS_COMMON.fn_callAjaxForm('/selectCommCdListAse', $('#frmSearch').serialize(), 'GET', cb_selectGridList, true);
    }

    /**
     * 조회 callBack함수 : 조회된 데이터로 masterGrid 그리기
     * @param result
     */
    const cb_selectGridList = function( result ){
        masterTable.clear();
        masterTable.rows.add(result.data).draw();
    }
    /**
     * detailGrid 생성
     * @type {DataTable}
     */
    let detailTable = new DataTable('#detail', {
        select: {
            style: 'single'
        },
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

    /**
     * selected된 row의 commCd 가져오기
     */
    masterTable.on( 'select', function ( e, dt, type, indexes ) {
        if ( type === 'row' ) {
            let selectedData = masterTable.rows( indexes ).data();
            let selectedCd = selectedData[0].commCd
            console.log(selectedCd);

            selectDetailGridList( selectedCd )
        }
    } );

    /**
     * 선택한 MasterGrid의 Detail 데이터 조회
     * @param commCd selected된 commCd
     */
    const selectDetailGridList = function( commCd ) {
        JS_COMMON.fn_callAjaxJson('/selectCommDtlCdListAse', {
            commCd: commCd
        }, 'POST', cb_selectDetailGridList);
    }

    /**
     * 조회 callBack함수 : 조회된 데이터로 detailGrid 그리기
     * @param result
     */
    const cb_selectDetailGridList = function( result ){
        detailTable.clear();
        detailTable.rows.add(result.data).draw();
    }

    //insertParam
    let paramListI = [
        {commCd: '4ASE', commNm: 4, commDesc: 4, createUserId: 'ASE'}
        , {commCd: '5ASE', commNm: 5, commDesc: 5, createUserId: 'ASE'}
        , {commCd: '6ASE', commNm: 6, commDesc: 6, createUserId: 'ASE'}
    ];

    const insert = function() {
        JS_COMMON.fn_callAjaxJson('/insertCommCdAse', paramListI, 'POST', cb_insert);
    }

    const cb_insert = function( result ){
        selectGridList();
    }

    //updateParam
    let paramListU = [
        {commCd: '4ASE', commNm: 44, commDesc: 44, updateUserId: 'ASE'}
        , {commCd: '5ASE', commNm: 55, commDesc: 55, updateUserId: 'ASE'}
        , {commCd: '6ASE', commNm: 66, commDesc: 66, updateUserId: 'ASE'}
    ];

    const update = function() {
        JS_COMMON.fn_callAjaxJson('/updateCommCdAse', paramListU, 'POST', cb_update);
    }

    const cb_update = function( result ){
        selectGridList();
    }

    //deleteParam
    let paramListD = [
        {commCd: '4ASE'}
        , {commCd: '5ASE'}
        , {commCd: '6ASE'}
    ];

    const fn_delete = function() {
        JS_COMMON.fn_callAjaxJson('/deleteCommCdAse', paramListD, 'POST', cb_delete);
    }

    const cb_delete = function( result ){
        selectGridList();
    }

</script>

</html>
