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

    <link rel="stylesheet" href="https://cdn.datatables.net/1.13.7/css/jquery.dataTables.min.css" >

    <script src="https://cdn.datatables.net/1.13.7/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/select/1.7.0/js/dataTables.select.min.js"></script>

</head>
<body>
<jsp:include page="/WEB-INF/jsp/common/nav.jsp" />

<h3>KCS Datatables</h3>

<br />

<form id="frmSearch" onsubmit="return false" method="get">
    <div class="form-row align-items-center">
        <div class="col-auto">
            <label class="sr-only" for="name">Name</label>
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">Name</div>
                </div>
                <input type="text" class="form-control" id="name" name="name">
            </div>
        </div>
        <div class="col-auto">
            <label class="sr-only" for="position">Position</label>
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">Position</div>
                </div>
                <input type="text" class="form-control" id="position" name="position">
            </div>
        </div>
        <div class="col-auto">
            <label class="sr-only" for="office">Office</label>
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">Office</div>
                </div>
                <input type="text" class="form-control" id="office" name="office">
            </div>
        </div>
        <div class="col-auto">
            <label class="sr-only" for="age">Age</label>
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">Age</div>
                </div>
                <input type="text" class="form-control" id="age" name="age">
            </div>
        </div>
        <div class="col-auto">
            <label class="sr-only" for="salary">Salary</label>
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">Salary</div>
                </div>
                <input type="text" class="form-control" id="salary" name="salary">
            </div>
        </div>
        <div class="col-auto">
            <button id="btnSearch" name="" class="btn btn-info">조회</button>
            <button id="btnReg" name="" class="btn btn-info">등록</button>
        </div>
    </div>
</form>

<br />

<table id="example" class="display" style="width:100%">
    <thead>
    <tr>
        <th>Name</th>
        <th>Position</th>
        <th>Office</th>
        <th>AGE</th>
        <th>Salary</th>
    </tr>
    </thead>
</table>



<div class="modal" id="modal" role="dialog" aria-labelledby="remoteModalLabel" aria-hidden="true" >
    <div class="modal-dialog">
        <div class="modal-content" >
            <div class="modal-body">
                <div id="popTitle">등록</div>
                <div class="form-row align-items-center">
                    <form id="frmPop">
                        <div class="col-auto">
                            <label class="sr-only" for="name">Name</label>
                            <div class="input-group mb-2">
                                <div class="input-group-prepend">
                                    <div class="input-group-text">Name</div>
                                </div>
                                <input type="text" class="form-control" id="popName" name="name">
                            </div>
                        </div>
                        <div class="col-auto">
                            <label class="sr-only" for="position">Position</label>
                            <div class="input-group mb-2">
                                <div class="input-group-prepend">
                                    <div class="input-group-text">Position</div>
                                </div>
                                <input type="text" class="form-control" id="popPosition" name="position">
                            </div>
                        </div>
                        <div class="col-auto">
                            <label class="sr-only" for="office">Office</label>
                            <div class="input-group mb-2">
                                <div class="input-group-prepend">
                                    <div class="input-group-text">Office</div>
                                </div>
                                <input type="text" class="form-control" id="popOffice" name="office">
                            </div>
                        </div>
                        <div class="col-auto">
                            <label class="sr-only" for="age">Age</label>
                            <div class="input-group mb-2">
                                <div class="input-group-prepend">
                                    <div class="input-group-text">Age</div>
                                </div>
                                <input type="text" class="form-control" id="popAge" name="age">
                            </div>
                        </div>
                        <div class="col-auto">
                            <label class="sr-only" for="salary">Salary</label>
                            <div class="input-group mb-2">
                                <div class="input-group-prepend">
                                    <div class="input-group-text">Salary</div>
                                </div>
                                <input type="text" class="form-control" id="popSalary" name="salary">
                            </div>
                        </div>
                        <input type="hidden" id="popIdx" name="idx">
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
                    <button type="button" class="btn btn-primary" id="btnInsert">등록</button>
                    <button type="button" class="btn btn-primary" id="btnUpdate">수정</button>
                </div>
            </div>
        </div>
    </div>
</div>

</body>

<script>


    $(document).ready(function() {
        $('#btnSearch').click(function () {
            selectGridList();
        });
        $('#btnReg').click(function () {
            setPopup();
            return;
            $('#modal').modal('show');
        });
        $('#btnInsert').click(function () {
            insertGrid();
        });
        $('#btnUpdate').click(function () {
            updateGrid();
        });
        selectGridList();
    });

    let selectGridList = function () {
        JS_COMMON.fn_callAjaxForm('/kcsDatatables01List', $('#frmSearch').serialize(), 'GET', cb_selectGridList, true);
    }

    let cb_selectGridList = function ( result ) {
        table.clear().draw();
        table.rows.add( result ).draw();
    }

    let table = new DataTable('#example', {
        columns: [
            { data: 'name' },
            { data: 'position' },
            { data: 'office' },
            { data: 'age' },
            { data: 'salary' }
        ]
        , select: {
            style: 'multi'
        }
    });

    // table.on('click', 'tbody tr', function () {
    //     let data = table.row(this).data();
    //     console.log( data );
    //     setPopup( data );
    // });

    let insertGrid = function () {
        JS_COMMON.fn_callAjaxForm('/kcsInsertDatatables', $('#frmPop').serialize(), 'GET', cb_insertGrid, true);
    }

    let cb_insertGrid = function ( result ) {
        selectGridList();
        $('#modal').modal('hide');
    }

    let updateGrid = function () {
        JS_COMMON.fn_callAjaxForm('/kcsUpdateDatatables', $('#frmPop').serialize(), 'GET', cb_updateGrid, true);
    }

    let cb_updateGrid = function ( result ) {
        selectGridList();
        $('#modal').modal('hide');
    }

    let setPopup = function ( rowData ) {
        console.log( table.rows({ selected: true }).data() );
        // console.log( table.rows( '.important' ).select() );
        return;
        $('#modal').modal('show');
        JS_COMMON.fn_formReset('frmPop');
        $('#popIdx').val( rowData.idx );
        $('#popName').val( rowData.name );
        $('#popPosition').val( rowData.position );
        $('#popOffice').val( rowData.office );
        $('#popAge').val( rowData.age );
        $('#popSalary').val( rowData.salary );
    }
</script>

</html>
