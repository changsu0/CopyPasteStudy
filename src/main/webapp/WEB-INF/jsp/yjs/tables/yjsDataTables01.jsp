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
    <script src="https://cdn.datatables.net/1.13.7/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/select/1.7.0/js/dataTables.select.min.js"></script>
    <link rel="stylesheet" href="https://cdn.datatables.net/1.13.7/css/jquery.dataTables.min.css" />
</head>
<body>
<jsp:include page="/WEB-INF/jsp/common/nav.jsp" />

<h3>Yjs DataTables 01</h3>
<br />
<form:form id="frmSearch" onsubmit="return false">
    <div class="form-row align-items-center">
        <div class="col-auto">
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">Name</div>
                </div>
                <input type="text" class="form-control" id="Name" placeholder="Name" name="Name">
            </div>
        </div>
        <div class="col-auto">
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">position</div>
                </div>
                <input type="text" class="form-control" id="position" placeholder="position" name="position">
            </div>
        </div>
        <div class="col-auto">
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">office</div>
                </div>
                <input type="text" class="form-control" id="office" placeholder="office" name="office">
            </div>
        </div>
        <div class="col-auto">
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">age</div>
                </div>
                <input type="text" class="form-control" id="age" placeholder="age" name="age">
            </div>
        </div>
        <div class="col-auto">
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">salary</div>
                </div>
                <input type="text" class="form-control" id="salary" placeholder="salary" name="salary">
            </div>
        </div>
        <div class="col-auto">
            <button id="search" name="action" class="btn btn-info" type="submit">조회</button>
            <button type="button" class="btn btn-primary" id="insertModal">등록</button>
            <button id="delete" class="btn btn-danger">삭제</button>
        </div>
    </div>
</form:form>
<div id="demo_info" class="box"></div>
<table id="example" class="display" style="width:100%">
    <thead>
    <tr>
        <th>Name</th>
        <th>Position</th>
        <th>Office</th>
        <th>Age</th>
        <th>Salary</th>
    </tr>
    </thead>
</table>
<div class="modal" id="modal"  role="dialog" aria-labelledby="remoteModalLabel" aria-hidden="true" style="max-width:750px;">
    <div class="modal-dialog" style="max-width:700px;">
        <div class="modal-content" >
            <div class="modal-header">
                <h5>등록하기</h5>
            </div>
            <div class="modal-body">
            <form:form id="modalForm">
                <div class="form-row align-items-center">
                    <div class="col-auto">
                        <div class="input-group mb-2">
                            <div class="input-group-prepend">
                                <div class="input-group-text">Name</div>
                            </div>
                            <input type="text" class="form-control" id="nameLayer" placeholder="name" name="name">
                        </div>
                    </div>
                    <div class="col-auto">
                        <div class="input-group mb-2">
                            <div class="input-group-prepend">
                                <div class="input-group-text">position</div>
                            </div>
                            <input type="text" class="form-control" id="positionLayer" placeholder="position" name="position">
                        </div>
                    </div>
                    <div class="col-auto">
                        <div class="input-group mb-2">
                            <div class="input-group-prepend">
                                <div class="input-group-text">office</div>
                            </div>
                            <input type="text" class="form-control" id="officeLayer" placeholder="office" name="office">
                        </div>
                    </div>
                    <div class="col-auto">
                        <div class="input-group mb-2">
                            <div class="input-group-prepend">
                                <div class="input-group-text">age</div>
                            </div>
                            <input type="text" class="form-control" id="ageLayer" placeholder="age" name="age">
                        </div>
                    </div>
                    <div class="col-auto">
                        <div class="input-group mb-2">
                            <div class="input-group-prepend">
                                <div class="input-group-text">salary</div>
                            </div>
                            <input type="text" class="form-control" id="salaryLayer" placeholder="salary" name="salary">
                        </div>
                    </div>
                    <input type="text" class="form-control" id="idxLayer" placeholder="idx" name="idx" hidden="hidden">
                </div>
            </form:form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
                <button type="button" class="btn btn-primary" id="save">수정</button>
                <button type="button" class="btn btn-primary" id="insert">저장</button>
            </div>
        </div>
    </div>
</div>
</body>

<script>
    // new DataTable("#example");

    // let table = new DataTable('#example');
    //

    // function eventFired(type) {
    //     // let n = document.querySelector('#demo_info');
    //     // n.innerHTML +=
    //     //     '<div>' + type + ' event - ' + new Date().getTime() + '</div>';
    //     // n.scrollTop = n.scrollHeight;
    //     if(type === 'Order')
    //         alert(type + '(정렬) event - ' + new Date().getTime());
    // }
    //
    // new DataTable('#example')
    //     .on('order.dt', () => eventFired('Order'))
    //     .on('search.dt', () => eventFired('Search'))
    //     .on('page.dt', () => eventFired('Page'));

    // new DataTable('#example', {
    //     columnDefs: [
    //         {
    //             // The `data` parameter refers to the data for the cell (defined by the
    //             // `data` option, which defaults to the column being worked with, in
    //             // this case `data: 0`.
    //             render: (data, type, row) => data + ' (' + row[5] + ')',
    //             targets: 0
    //         },
    //         { visible: false, targets: [5] }
    //     ]
    // });

    let table = new DataTable('#example', {
        select: {
            style: 'multi'
        },
        columns: [
            { data: 'name' },
            { data: 'position' },
            { data: 'office' },
            { data: 'age' },
            { data: 'salary' }
        ]
    });

    // // row click 이벤트
    // table.on('click', 'tbody tr', function () {
    //     let rowData = table.row(this).data();
    //     console.log(rowData);
    //     setPopup(rowData);
    //     // alert('You clicked on ' + data[0] + "'s row");
    // });

    let setPopup = function(rowData){
        $("#modal").modal("show");
        $('#idxLayer').val(rowData.idx);
        $('#nameLayer').val(rowData.name);
        $('#positionLayer').val(rowData.position);
        $('#officeLayer').val(rowData.office);
        $('#ageLayer').val(rowData.age);
        $('#salaryLayer').val(rowData.salary);
    }

    $(document).ready(function() {
        $('#search').click(function () {
            selectGrid();
        });
        $('#insertModal').click(function () {
            openLayerPop();
        });
        $('#insert').click(function(){
            insertGrid();
        });
        $('#save').click(function(){
            updateGrid();
        });
        $('#delete').click(function(){
            deleteGrid();
        });
    });

    const deleteGrid = function() {
        let selRows = table.rows( { selected: true } ).data();
        console.log(selRows);
        let selList = [];
        for (let i = 0; i < selRows.length; i++) {
            selList.push(selRows[i]);
        }
        console.log(selList);
        JS_COMMON.fn_callAjaxJson('/deleteYjsDataTablesList', selList, 'post', cb_deleteGrid, true);
    }

    function cb_deleteGrid(result) {
        $("#modal").modal("hide");
        selectGrid();
    }

    const insertGrid = function() {
        console.log($('#modalForm').serialize());
        JS_COMMON.fn_callAjaxForm('/insertYjsDataTablesList', $('#modalForm').serialize(), 'get', cb_insertGrid, true);
    }

    function cb_insertGrid(result) {
        selectGrid();
        $("#modal").modal("hide");
    }

    const updateGrid = function() {
        console.log($('#modalForm').serialize());
        JS_COMMON.fn_callAjaxForm('/updateYjsDataTablesList', $('#modalForm').serialize(), 'get', cb_updateGrid, true);
    }

    function cb_updateGrid(result) {
        selectGrid();
        $("#modal").modal("hide");
    }

    const openLayerPop = function() {
        $("#modal").modal("show");
    }

    const selectGrid = function() {
        JS_COMMON.fn_callAjaxForm('/yjsDataTables01List', $('#frmSearch').serialize(), 'get', cb_selectGrid, true);
    }

    function cb_selectGrid(result) {
        // console.log(result);
        table.clear().draw();
        table.rows.add( result.data ).draw();
    }

</script>
</html>
