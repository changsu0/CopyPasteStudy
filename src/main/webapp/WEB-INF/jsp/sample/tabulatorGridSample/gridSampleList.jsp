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
    <link href="dist/css/tabulator.min.css" rel="stylesheet">
    <script type="text/javascript" src="dist/js/tabulator.min.js"></script>
</head>
<body>
<jsp:include page="/WEB-INF/jsp/common/nav.jsp" />

<h3>Grid Sample리스트</h3>

<br />

<div class="container">
    <form id="frmSave" onsubmit="return false">
        <div class="row">
            <div class="col">
                <label class="sr-only" for="userId">User ID</label>
                <div class="input-group mb-2">
                    <div class="input-group-prepend">
                        <div class="input-group-text">User ID</div>
                    </div>
                    <input type="text" class="form-control" id="userId" name="userId" value="" />
                </div>
            </div>
            <div class="col">
                <label class="sr-only" for="userName">userName</label>
                <div class="input-group mb-2">
                    <div class="input-group-prepend">
                        <div class="input-group-text">userName</div>
                    </div>
                    <input type="text" class="form-control" id="userName" name="userName" value="" />
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col">
                <label class="sr-only" for="userPhone">userPhone</label>
                <div class="input-group mb-2">
                    <div class="input-group-prepend">
                        <div class="input-group-text">userPhone</div>
                    </div>
                    <input type="text" class="form-control" id="userPhone" name="userPhone" value="" />
                </div>
            </div>
            <div class="col">
                <label class="sr-only" for="deptCode">deptCode</label>
                <div class="input-group mb-2">
                    <div class="input-group-prepend">
                        <div class="input-group-text">deptCode</div>
                    </div>
                    <select class="form-control" id="deptCode" name="deptCode">
                        <option value="">선택하세요</option>
                        <c:forEach var="list" items="${deptCodeList}" varStatus="status">
                            <option value="${list.deptCode}" <c:if test="${list.deptCode eq sampleVO.deptCode}">selected="selected"</c:if> >${list.deptName}</option>
                        </c:forEach>
                    </select>
                </div>
            </div>
            <div class="col">
                <div class="col-auto">
                    <button id="btnSave" class="btn btn-info">저장</button>
                    <button id="btnDelete" style="display: none" class="btn btn-info">삭제</button>
                </div>
            </div>
        </div>
        <input type="hidden" name="action" id="action" />
    </form>
</div>

<br />
<hr />
<br />

<div class="container">
    <form id="frmSearch" onsubmit="return false">
    <div class="row">
        <div class="col">
            <label class="sr-only">User ID</label>
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">User ID</div>
                </div>
                <input type="text" class="form-control" name="userId" value="" />
            </div>
        </div>
        <div class="col">
            <label class="sr-only">userName</label>
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">userName</div>
                </div>
                <input type="text" class="form-control" name="userName" value="" />
            </div>
        </div>
        <div class="col">
            <label class="sr-only">userPhone</label>
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">userPhone</div>
                </div>
                <input type="text" class="form-control" name="userPhone" value="" />
            </div>
        </div>
        <div class="col">
            <label class="sr-only" for="">deptCode</label>
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">deptCode</div>
                </div>
                <select class="form-control" id="" name="deptCode">
                    <option value="">전체</option>
                    <c:forEach var="list" items="${deptCodeList}" varStatus="status">
                        <option value="${list.deptCode}" <c:if test="${list.deptCode eq sampleVO.deptCode}">selected="selected"</c:if> >${list.deptName}</option>
                    </c:forEach>
                </select>
            </div>
        </div>
        <div class="col">
            <div class="col-auto">
                <button id="btnSearch" class="btn btn-info">조회</button>
            </div>
        </div>
    </div>
    </form>
</div>

<br /><br />
    <div id="example-table"></div>
</body>

<script>
    $(document).ready(function(){

        $('#btnSearch').click(function (){
            search();
        });

        $('#btnSave').click(function (){
            saveSample();
        });

        $('#btnDelete').click(function (){
            deleteSample();
        });

        initGrid();
    });

    var g_sampleGrid;
    function initGrid(){
        //create Tabulator on DOM element with id "example-table"
        g_sampleGrid = new Tabulator("#example-table", {
            height:400, // set height of table (in CSS or here), this enables the Virtual DOM and improves render speed dramatically (can be any valid css height value)
            ajaxURL: '/selectAsyncSampleList', //assign data to table
            layout:"fitColumns", //fit columns to width of table (optional)
            columns:[ //Define Table Columns
                {title:"userId", field:"userId", width:150},
                {title:"userName", field:"userName" },
                {title:"userPhone", field:"userPhone"},
                {title:"deptCode", field:"deptCode"},
            ],
            rowClick:function(e, row){ //trigger an alert message when the row is clicked
                console.log( row.getData() );
                var userId = row.getData().userId;
                var userName = row.getData().userName;
                var userPhone = row.getData().userPhone;
                var deptCode = row.getData().deptCode;
                setSampleData(userId, userName, userPhone, deptCode);
            },
        });
    }

    function search() {
        g_sampleGrid.replaceData("/selectAsyncSampleList", $('#frmSearch').serializeObject()) //load data from data/php via ajax request
    }

    function saveSample(){
        $('#action').val('save');
        $('#btnDelete').hide();
        fn_callAjax('/saveAsyncSample', $('#frmSave').serialize(), 'POST', cb_saveSample);
    }

    function cb_saveSample( rstData ){
        search();
        fn_formReset('frmSave');
        alert('저장완료');
    }

    function setSampleData(userId, userName, userPhone, deptCode){
        $('#btnDelete').show();
        $('#userId').val(userId);
        $('#userName').val(userName);
        $('#userPhone').val(userPhone);

        $('#deptCode option').each(function (){
            if ($(this).val() == deptCode){
                $(this).attr('selected', true);
            }else{
                $(this).attr('selected', false);
            }
        });
    }

    function deleteSample(){
        $('#action').val('delete');
        $('#btnDelete').hide();
        fn_callAjax('/saveAsyncSample', $('#frmSave').serialize(), 'POST', cb_deleteSample);
    }

    function cb_deleteSample( rstData ){
        search();
        fn_formReset('frmSave');
        alert('삭제완료');
    }

</script>
</html>
