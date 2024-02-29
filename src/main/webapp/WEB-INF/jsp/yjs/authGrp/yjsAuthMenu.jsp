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
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/select/1.7.0/css/select.dataTables.min.css" />

    <link type="text/css" href="//gyrocode.github.io/jquery-datatables-checkboxes/1.2.12/css/dataTables.checkboxes.css" rel="stylesheet" />
    <script type="text/javascript" src="//gyrocode.github.io/jquery-datatables-checkboxes/1.2.12/js/dataTables.checkboxes.min.js"></script>
</head>
<body>
<jsp:include page="/WEB-INF/jsp/common/navYJS.jsp" />

<h3>Yjs 권한</h3>
<br />
<div id="tableDiv" style="display: flex; width: 100%;">
    <div  style="flex: 80">
        <table id="authGrid" class="display">
            <thead>
            <tr>
                <th>권한그룹ID</th>
                <th>권한그룹명</th>
                <th>생성자</th>
                <th>생성일시</th>
            </tr>
            </thead>
        </table>
    </div>
    <div style="flex: 1"></div>
    <div style="flex: 120">
        <table id="MenuGrid" class="display">
            <thead>
            <tr>
                <th></th>
                <th>메뉴ID</th>
                <th>메뉴명</th>
                <th>상위메뉴ID</th>
                <th>메뉴URL</th>
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
    let tableAuth = new DataTable('#authGrid',{
        select: {
            style: 'single'
        },
        columns: [
            { data: 'authGrpId' },
            { data: 'authGrpNm' },
            { data: 'createUserId' },
            { data: 'createDt' }
        ]
    });
    let tableMenu = new DataTable('#MenuGrid',{
        columns: [
            {
                orderable: false, // 정렬기능
                className: 'table-active dt-body-center',
                render: function (data, type, full, meta) {
                    return '<input type="checkbox" name="menuChk" value="">';
                }
            },
            { data: 'menuId' },
            { data: 'menuNm' },
            { data: 'menuUpId' },
            { data: 'menuUrl' },
            { data: 'useYn' },
            { data: 'createUserId' },
            { data: 'createDt' }
        ]
    });

    $(document).ready(function() {
        selectAuthlist();
        selectMenulist();
    });

    const selectAuthlist = function() {
        JS_COMMON.fn_callAjaxForm('/selectAuthGrpAll', null, 'get', cb_selectAuth, true);
    }
    function cb_selectAuth(result) {
        tableAuth.clear().draw();
        tableAuth.rows.add( result.data ).draw();
    }

    const selectMenulist = function() {
        JS_COMMON.fn_callAjaxForm('/selectMenuAll', null, 'get', cb_selectMenu, true);
    }
    let menuAll = '';
    function cb_selectMenu(result) {
        menuAll = result.data;
        tableMenu.clear().draw();
        tableMenu.rows.add( result.data ).draw();
    }

    tableAuth.on('click', 'tbody tr', function () {
        let rowData = tableAuth.row(this).data();
        console.log(rowData);
        menuGridChk(rowData.authGrpId);
    });

    const menuGridChk = function(authGrpId) {
        JS_COMMON.fn_callAjaxJson('/selectAuthMenuChk', {authGrpId:authGrpId}, 'post', cb_authMenuChk, true);
    }
    function cb_authMenuChk(result) {
        console.log(result);
        // 메뉴 그리드에 체크
        for (let i = 0; i < menuAll.length; i++) {
            for (let j = 0; j < result.data.length; j++) {
                if (menuAll[i].menuId === result.data[j].menuId){
                    console.log(menuAll[i].menuId);
                }
            }
        }
    }

</script>
</html>
