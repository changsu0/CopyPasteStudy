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
</head>
<body>
<jsp:include page="/WEB-INF/jsp/common/nav.jsp" />

<h3>Sample리스트</h3>

<br />

<div class="container">
    <form id="frmSave" onsubmit="return false">
        <div class="row">
            <div class="col">
                <div class="form-group">
                    <label for="userId">userId</label>
                    <input type="text" class="form-control" id="userId" placeholder="userId" name="userId">
                </div>
            </div>
            <div class="col">
                <div class="form-group">
                    <label for="userName">userName</label>
                    <input type="text" class="form-control" id="userName" placeholder="userName" name="userName">
                </div>
            </div>
            <div class="col">
                <div class="form-group">
                    <label for="userPhone">userPhone</label>
                    <input type="text" class="form-control" id="userPhone" placeholder="userPhone" name="userPhone">
                </div>
            </div>
            <div class="col">
                <div class="form-group">
                    <label for="userPhone">부서코드</label>
                    <input type="text" class="form-control" id="deptCode" placeholder="deptCode" name="deptCode">
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
            <div class="form-group">
                <label for="userId">userId</label>
                <input type="text" class="form-control" id="userId" placeholder="userId" name="userId">
            </div>
        </div>
        <div class="col">
            <div class="form-group">
                <label for="userName">userName</label>
                <input type="text" class="form-control" id="userName" placeholder="userName" name="userName">
            </div>
        </div>
        <div class="col">
            <div class="form-group">
                <label for="userPhone">userPhone</label>
                <input type="text" class="form-control" id="userPhone" placeholder="userPhone" name="userPhone">
            </div>
        </div>
        <div class="col">
            <div class="form-group">
                <label for="userPhone">부서코드</label>
                <input type="text" class="form-control" id="deptCode" placeholder="deptCode" name="deptCode">
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
    <table class="table table-striped">
        <thead>
        <tr>
            <th scope="col">#</th>
            <th scope="col">ID</th>
            <th scope="col">이름</th>
            <th scope="col">전화</th>
            <th scope="col">부서코드</th>
        </tr>
        </thead>
        <tbody id="tbodySampleList">
        </tbody>
    </table>
</body>

<script>
    $(document).ready(function(){

        $('#btnSearch').click(function (){
            selectSampleList();
        });

        $('#btnSave').click(function (){
            saveSample();
        });

        $('#btnDelete').click(function (){
            deleteSample();
        });

        selectSampleList();
    });

    function selectSampleList(){
        JS_COMMON.fn_callAjaxForm('/selectAsyncSampleList', $('#frmSearch').serialize(), 'get', cb_selectSampleList, true);
        // JS_COMMON.fn_callAjaxJson('/selectAsyncSampleList', {userId: '1'}, 'get', cb_selectSampleList, true);
    }

    function cb_selectSampleList( rstData ){

        let innerHtml = '';
        let idx = 0;
        for (const sampleMap of rstData) {
            innerHtml += '<tr>';
            innerHtml += '<td scope="row">' + ++idx + '</td>';
            var jsParam = "javascript:setSampleData('" + sampleMap.userId + "','" + sampleMap.userName + "','" + sampleMap.userPhone + "','" + sampleMap.deptCode + "')";
            innerHtml += '<td><a href="' + jsParam + '">' + sampleMap.userId + '</a></td>';
            innerHtml += '<td>' + sampleMap.userName + '</td>';
            innerHtml += '<td>' + sampleMap.userPhone + '</td>';
            innerHtml += '<td>' + sampleMap.deptCode + '</td>';
            innerHtml += '</tr>';
        }
        $('#tbodySampleList').html( innerHtml );

        JS_COMMON.fn_formReset('frmSave');
    }

    function saveSample(){
        $('#action').val('save');
        $('#btnDelete').hide();
        JS_COMMON.fn_callAjaxForm('/saveAsyncSample', $('#frmSave').serialize(), 'POST', cb_saveSample, true);
    }

    function cb_saveSample( rstData ){
        selectSampleList();
        JS_COMMON.fn_formReset('frmSave');
        alert('저장완료');
    }

    function setSampleData(userId, userName, userPhone, deptCode){
        $('#btnDelete').show();
        $('#userId').val(userId);
        $('#userName').val(userPhone);
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
        JS_COMMON.fn_callAjaxForm('/saveAsyncSample', $('#frmSave').serialize(), 'POST', cb_deleteSample, true);
    }

    function cb_deleteSample( rstData ){
        selectSampleList();
        JS_COMMON.fn_formReset('frmSave');
        alert('삭제완료');
    }

</script>
</html>
