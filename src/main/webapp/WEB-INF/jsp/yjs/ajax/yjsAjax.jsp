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

<h3>Yjs Common Cd Ajax List</h3>
<br />

<form:form id="frmForm" onsubmit="return false">
    <br/>
    <div class="form-row align-items-center">
        <div class="col-auto">
            <label class="sr-only" for="commCdForm">공통코드</label>
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">공통코드</div>
                </div>
                <input type="text" class="form-control" id="commCdForm" placeholder="공통코드" name="commCd">
            </div>
        </div>
        <div class="col-auto">
            <label class="sr-only" for="commNmForm">공통코드명</label>
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">공통코드명</div>
                </div>
                <input type="text" class="form-control" id="commNmForm" placeholder="공통코드명" name="commNm">
            </div>
        </div>
        <div class="col-auto">
            <label class="sr-only" for="commDescForm">공통코드설명</label>
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">공통코드설명</div>
                </div>
                <input type="text" class="form-control" id="commDescForm" placeholder="공통코드설명" name="commDesc">
            </div>
        </div>
        <div class="col-auto">
            <button id="save" class="btn btn-info">저장</button>
            <button id="delete" style="display: none" class="btn btn-info">삭제</button>
        </div>
    </div>
</form:form>
<hr><br/>
<form:form id="frmSearch" onsubmit="return false">
    <div class="form-row align-items-center">
        <div class="col-auto">
            <label class="sr-only" for="commCd">공통코드</label>
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">공통코드</div>
                </div>
                <input type="text" class="form-control" id="commCd" placeholder="공통코드" name="commCd">
            </div>
        </div>
        <div class="col-auto">
            <label class="sr-only" for="commNm">공통코드명</label>
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">공통코드명</div>
                </div>
                <input type="text" class="form-control" id="commNm" placeholder="공통코드명" name="commNm">
            </div>
        </div>
        <div class="col-auto">
            <label class="sr-only" for="commDesc">공통코드설명</label>
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">공통코드설명</div>
                </div>
                <input type="text" class="form-control" id="commDesc" placeholder="공통코드설명" name="commDesc">
            </div>
        </div>
        <div class="col-auto">
            <button id="search" name="action" class="btn btn-info" type="submit">조회</button>
        </div>
    </div>
    <div class="form-row align-items-center">
        <div class="col-auto">
            <button id="searchMem" name="action" class="btn btn-info" type="submit">Member 조회</button>
        </div>
    </div>
</form:form>
<br />
    <table class="table table-striped">
        <thead>
        <tr>
            <th scope="col">#</th>
            <th scope="col">공통코드</th>
            <th scope="col">공통코드명</th>
            <th scope="col">공통코드설명</th>
        </tr>
        </thead>
        <tbody id="tbodySampleList">
        </tbody>
    </table>
</body>

<script>
    $(document).ready(function(){
        $('#search').click(function(){
            selectCommList();
        });
        $('#save').click(function(){
            saveYjsAsyncAjax();
        });
        $('#delete').click(function (){
            deleteYjsAsyncAjax();
        });
        selectCommList();


        $('#searchMem').click(function(){
            selectMemList();
        });
    });

    const setInputValue = function(inputID, inputVal) {
        $('#'+inputID).val(inputVal);
    }
    const setInputSelect = function(code,name,desc) {
        console.log(code,name,desc);
        $('#delete').show();
        setInputValue('commCdForm', code);
        setInputValue('commNmForm', name);
        setInputValue('commDescForm', desc);
    }

    function cb_snow(result) {
        console.log(result);
        let innerHtml = '';

        for (let i = 0; i < result.length; i++) {
            innerHtml += '<tr>';
            innerHtml += '<td>' + (i+1) + '</td>';
            innerHtml += '<td><a href="javascript:setInputSelect(\'' + result[i].commCd + '\',\'' + result[i].commNm + '\',\'' + result[i].commDesc + '\')">' + result[i].commCd + '</a></td>';
            innerHtml += '<td>' + result[i].commNm + '</td>';
            innerHtml += '<td>' + result[i].commDesc + '</td>';
            innerHtml += '</tr>';
        }
        $('#tbodySampleList').html(innerHtml);

        // 함수() => 함수를 호출
        // 함수 => 함수 자체를 전달
    }

    let selectCommList = function () {
        // 목적 : 데이터조회
        // 1. 검색조건 가져오기 (Form안에 Tag)
        // 2. 누구한테 쏠지 정하기 (URL 정의)
        // 3. 쏘기 (aJax(action:submit) Call)
        console.log($('#frmSearch').serialize());
        let strURL = '/selectYjsAsyncAjax';
        JS_COMMON.fn_callAjaxForm('/selectYjsAsyncAjax', $('#frmSearch').serialize(), 'get', cb_snow, true);
    }

    let cb_saveYjsAsyncAjax = function (result) {
        console.log(result);
        selectCommList();
        JS_COMMON.fn_formReset('frmForm');
        alert('저장완료');
    }

    let saveYjsAsyncAjax = function () {
        $('#delete').hide();
        JS_COMMON.fn_callAjaxForm('/saveYjsAsyncAjax', $('#frmForm').serialize(), 'post', cb_saveYjsAsyncAjax, true);
    }

    let cb_deleteYjsAsyncAjax = function (result) {
        console.log(result);
        selectCommList();
        JS_COMMON.fn_formReset('frmForm');
        alert('삭제완료');
    }

    let deleteYjsAsyncAjax = function() {
        $('#delete').hide();
        JS_COMMON.fn_callAjaxForm('/deleteYjsAsyncAjax', $('#frmForm').serialize(), 'post', cb_deleteYjsAsyncAjax, true);
    }

    let selectMemList = function () {
        let strURL = '/selectYjsAsyncMem';
        JS_COMMON.fn_callAjaxForm(strURL, $('#frmSearch').serialize(), 'get', cb_snow, true);
    }
</script>
</html>
