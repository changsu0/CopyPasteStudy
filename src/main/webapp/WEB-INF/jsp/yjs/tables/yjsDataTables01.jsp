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

</body>

<script>
    // new DataTable("#example");

    // let table = new DataTable('#example');
    //
    // // row click 이벤트
    // table.on('click', 'tbody tr', function () {
    //     let data = table.row(this).data();
    //     console.log(data);
    //     // alert('You clicked on ' + data[0] + "'s row");
    // });

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
        columns: [
            { data: 'name' },
            { data: 'position' },
            { data: 'office' },
            { data: 'age' },
            { data: 'salary' }
        ]
    });

    $(document).ready(function() {
        $('#search').click(function () {
            selectGrid();
        });
    });

    const selectGrid = function() {
        JS_COMMON.fn_callAjaxForm('/YjsDataTables01List', $('#frmSearch').serialize(), 'get', cb_selectGrid, true);
    }

    function cb_selectGrid(result) {
        console.log(result);
        table.clear().draw();
        table.rows.add( result.data ).draw();
    }

</script>
</html>
