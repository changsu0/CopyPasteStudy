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
<h3>ASE DataTables</h3>
<br />
<form id="frmSearch" onsubmit="return false">
    <div class="form-row align-items-center">
        <div class="col-auto">
            <label class="sr-only" for="1">1</label>
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">NAME</div>
                </div>
                <input type="text" class="form-control" id="1" placeholder="NAME" name="name" value="">
            </div>
        </div>
        <div class="col-auto">
            <label class="sr-only" for="2">2</label>
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">POSITION</div>
                </div>
                <input type="text" class="form-control" id="2" placeholder="POSITION" name="position" value="">
            </div>
        </div>
        <div class="col-auto">
            <label class="sr-only" for="3">3</label>
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">OFFICE</div>
                </div>
                <input type="text" class="form-control" id="3" placeholder="OFFICE" name="office" value="">
            </div>
        </div>
        <div class="col-auto">
            <label class="sr-only" for="4">4</label>
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">AGE</div>
                </div>
                <input type="text" class="form-control" id="4" placeholder="AGE" name="age" value="">
            </div>
        </div>
        <div class="col-auto">
            <label class="sr-only" for="5">5</label>
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">SALARY</div>
                </div>
                <input type="text" class="form-control" id="5" placeholder="SALARY" name="salary" value="">
            </div>
        </div>
        <div class="col-auto">
            <button class="btn btn-info" id="btnSearch">조회</button>
            <button class="btn btn-info" id="btnCreate">등록</button>
            <button class="btn btn-info" id="btnDelete">삭제</button>
        </div>
    </div>
</form>

<div id="demo_info" class="box"></div>
<table id="example" class="display" style="width:100%">
    <thead>
    <tr>
        <th>Idx</th>
        <th>Name</th>
        <th>Position</th>
        <th>Office</th>
        <th>age</th>
        <th>Salary</th>
    </tr>
    </thead>
</table>


<div class="modal" id="modal" role="dialog" aria-labelledby="remoteModalLabel" aria-hidden="true" >
    <div class="modal-dialog">
        <div class="modal-content" >
            <div class="modal-body">
                <form id="frmSave">
                    <div class="form-row align-items-center">
                        <div class="col-auto">
                            <input type="text" class="form-control" id="popIdx" name="idx" hidden="hidden">
                        </div>
                    </div>
                    <div class="col-auto">
                        <label class="sr-only" for="popName">NAME</label>
                        <div class="input-group mb-2">
                            <div class="input-group-prepend">
                                <div class="input-group-text">NAME</div>
                            </div>
                            <input type="text" class="form-control" id="popName" placeholder="NAME" name="name">
                        </div>
                    </div>
                    <div class="col-auto">
                        <label class="sr-only" for="popPosition">POSITION</label>
                        <div class="input-group mb-2">
                            <div class="input-group-prepend">
                                <div class="input-group-text">POSITION</div>
                            </div>
                            <input type="text" class="form-control" id="popPosition" placeholder="POSITION" name="position">
                        </div>
                    </div>
                    <div class="col-auto">
                        <label class="sr-only" for="popOffice">OFFICE</label>
                        <div class="input-group mb-2">
                            <div class="input-group-prepend">
                                <div class="input-group-text">OFFICE</div>
                            </div>
                            <input type="text" class="form-control" id="popOffice" placeholder="OFFICE" name="office">
                        </div>
                    </div>
                    <div class="col-auto">
                        <label class="sr-only" for="popAge">AGE</label>
                        <div class="input-group mb-2">
                            <div class="input-group-prepend">
                                <div class="input-group-text">AGE</div>
                            </div>
                            <input type="text" class="form-control" id="popAge" placeholder="AGE" name="age">
                        </div>
                    </div>
                    <div class="col-auto">
                        <label class="sr-only" for="popSalary">SALARY</label>
                        <div class="input-group mb-2">
                            <div class="input-group-prepend">
                                <div class="input-group-text">SALARY</div>
                            </div>
                            <input type="text" class="form-control" id="popSalary" placeholder="SALARY" name="salary">
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
                <button type="button" class="btn btn-primary" id="btnSave">저장</button>
                <button type="button" class="btn btn-primary" id="btnUpdate">수정</button>
            </div>
        </div>
    </div>
</div>

</body>
<script>

    // new DataTable('#example');

    // let table = new DataTable('#example');
    //
    // table.on('click', 'tbody tr', function () {
    //     let data = table.row(this).data();
    //
    //     console.log(data);
    //     // alert('You clicked on ' + data[0] + "'s row");
    // });

/*******************************************************************************************/

    // function eventFired(type) {
    //     if(type === 'Order'){
    //         alert("정렬이 완료되었습니다.");
    //     }
    //     let n = document.querySelector('#demo_info');
    //     n.innerHTML +=
    //         '<div>' + type + ' event - ' + new Date().getTime() + '</div>';
    //     n.scrollTop = n.scrollHeight;
    //
    // }
    //
    // new DataTable('#example')
    //     .on('order.dt', () => eventFired('Order'))
    //     .on('search.dt', () => eventFired('Search'))
    //     .on('page.dt', () => eventFired('Page'));

/*******************************************************************************************/

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
    // }
    // );

/*******************************************************************************************/

    $(document).ready(function() {
        selectGridList();

        $('#btnSearch').click(function() {
            selectGridList();
        });

        $('#btnCreate').click(function() {
            $('#modal').modal('show');
        });

        $('#btnSave').click(function() {
            saveData();
        });

        $('#btnUpdate').click(function() {
            updateData();
        });

        $('#btnDelete').click(function() {
            deleteData();
        });
    })

    let table = new DataTable('#example', {
        select: {
            style: 'multi'
        },
        columns: [
            { data: 'idx' },
            { data: 'name' },
            { data: 'position' },
            { data: 'office' },
            { data: 'age' },
            { data: 'salary' }
        ],
        columnDefs: [
            { visible: false, targets: [0] }
        ]
    });

    const selectGridList = function() {
        JS_COMMON.fn_callAjaxForm('/selectAseDataTBList', $('#frmSearch').serialize(), 'GET', cb_selectGridList, true);
    }

    const cb_selectGridList = function( result ){
        table.clear();
        table.rows.add(result.data).draw();
    }

    const saveData = function (){
        JS_COMMON.fn_callAjaxForm('/insertAseDataTBList', $('#frmSave').serialize(), 'GET', cb_saveData, true);
    }

    const cb_saveData = function(){
        $('#modal').modal('hide');
        JS_COMMON.fn_formReset('frmSave');
    }


    const updateData = function (){
        JS_COMMON.fn_callAjaxForm('/updateAseDataTBList', $('#frmSave').serialize(), 'GET', cb_updateData, true);
    }

    const cb_updateData = function(){
        JS_COMMON.fn_formReset('frmSave');
    }

    const deleteData = function () {
        let selectedCnt = table.rows('.selected').count()
        let selectedIdx = table.rows('.selected').data();

        let delList = [];
        let delMap = {};

        for (let i = 0; i < selectedIdx.length; i++) {
            delList.push(selectedIdx[i].idx);
        }

        console.log(delList);
        delMap.idx = delList;
        JS_COMMON.fn_callAjaxJson('/deleteAseDataTBList', {
            idxList : delList
        }, 'POST', cb_deleteData, true);
    }

    const cb_deleteData = function(){
        alert("삭제 완료");
        selectGridList();
    }



</script>

</html>
