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

</head>
<body>
<jsp:include page="/WEB-INF/jsp/common/nav.jsp" />

<h3>KCS Datatables</h3>
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

</body>

<script>
    // new DataTable('#example');

    /**************************************************/

    // let table = new DataTable('#example');
    //
    // // row Click Event 등록하는거다.
    // table.on('click', 'tbody tr', function () {
    //
    //     let data = table.row(this).data();
    //
    //     console.log( data );
    //
    //     // alert('You clicked on ' + data[0] + "'s row");
    // });

    /**************************************************/

    // function eventFired(type) {
    //     let n = document.querySelector('#demo_info');
    //
    //     if ( type === 'Order' ){
    //         alert('정렬 되었습니다.');
    //     }
    //     // n.innerHTML +=
    //     //     '<div>' + type + ' event - ' + new Date().getTime() + '</div>';
    //     // n.scrollTop = n.scrollHeight;
    // }
    //
    // new DataTable('#example')
    //     .on('order.dt', () => eventFired('Order'))
    //     .on('search.dt', () => eventFired('Search'))
    //     .on('page.dt', () => eventFired('Page'));

    /**************************************************/

    // new DataTable('#example', {
    //     columnDefs: [
    //         {
    //             // The `data` parameter refers to the data for the cell (defined by the
    //             // `data` option, which defaults to the column being worked with, in
    //             // this case `data: 0`.
    //             // render: (data, type, row) => data + ' (' + row[3] + ')',
    //
    //             render: function (data, type, row){
    //                 return data + ' (' + row[5] + ')';
    //             },
    //             targets: 0
    //         },
    //         { visible: false, targets: [5] }
    //     ]
    // });

    /**************************************************/

    let table = new DataTable('#example', {
        ajax: '/kcsDatatables01List',
        columns: [
            { data: 'name' },
            { data: 'position' },
            { data: 'office' },
            { data: 'age' },
            { data: 'salary' }
        ]
    });

    table.on('click', 'tbody tr', function () {

        let data = table.row(this).data();

        console.log( data );

        // alert('You clicked on ' + data[0] + "'s row");
    });
</script>

</html>
