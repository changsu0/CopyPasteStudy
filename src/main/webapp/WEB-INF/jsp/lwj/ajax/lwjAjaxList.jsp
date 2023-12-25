<%--
  Created by IntelliJ IDEA.
  User: leewoojin
  Date: 2023. 11. 10.
  Time: 오후 11:58
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

<h3>공통코드</h3>
<br />

<form id="formUp" onsubmit="return false" method="get">
<div class="form-row align-items-center">
    <div class="col-auto">
        <label class="sr-only" for="commCd">comm_cd</label>
        <div class="input-group mb-2">
            <div class="input-group-prepend">
                <div class="input-group-text">공통코드</div>
            </div>
            <input type="text" class="form-control" id="commCdUp" placeholder="공통코드" name="commCd" value="${lwjCommCdForm.commCd}">
        </div>
    </div>
    <div class="col-auto">
        <label class="sr-only" for="commNm">comm_nm</label>
        <div class="input-group mb-2">
            <div class="input-group-prepend">
                <div class="input-group-text">공통코드명</div>
            </div>
            <input type="text" class="form-control" id="commNmUp" placeholder="공통코드명" name="commNm" value="${lwjCommCdForm.commNm}">
        </div>
    </div>
    <div class="col-auto">
        <label class="sr-only" for="commDesc">comm_desc</label>
        <div class="input-group mb-2">
            <div class="input-group-prepend">
                <div class="input-group-text">공통코드설명</div>
            </div>
            <input type="text" class="form-control" id="commDescUp" placeholder="공통코드설명" name="commDesc" value="${lwjCommCdForm.commDesc}">
        </div>
    </div>
    <div class="col-auto">
        <button id="ajaxListSave" name="action" class="btn btn-info">저장</button>
        <button id="ajaxListDelete" name="action" class="btn btn-info">삭제</button>
    </div>
</div>
</form>

<hr>

<form id="formID" onsubmit="return false" method="get">
    <div class="form-row align-items-center">
        <div class="col-auto">
            <label class="sr-only" for="commCd">comm_cd</label>
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">공통코드</div>
                </div>
                <input type="text" class="form-control" id="commCd" placeholder="공통코드" name="commCd" value="${lwjCommCdForm.commCd}">
            </div>
        </div>
        <div class="col-auto">
            <label class="sr-only" for="commNm">comm_nm</label>
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">공통코드명</div>
                </div>
                <input type="text" class="form-control" id="commNm" placeholder="공통코드명" name="commNm" value="${lwjCommCdForm.commNm}">
            </div>
        </div>
        <div class="col-auto">
            <label class="sr-only" for="commDesc">comm_desc</label>
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">공통코드설명</div>
                </div>
                <input type="text" class="form-control" id="commDesc" placeholder="공통코드설명" name="commDesc" value="${lwjCommCdForm.commDesc}">
            </div>
        </div>
        <div class="col-auto">
            <button id="ajaxListSearch" name="action" class="btn btn-info">조회</button>
        </div>
    </div>
</form>
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
        <tbody id="tbodylwjAjaxList">
        </tbody>
    </table>
</body>

<script>
    $(document).ready(function() {
        //버튼 클릭 이벤트 > 함수X
        $('#ajaxListSearch').click(function () {
            selectCommList();  //함수 호출
        });

        $('#ajaxListSave').click(function () {
            savelwjAsyncAjax();  //함수 호출
        });

        $('#ajaxListDelete').click(function () {
            deletelwjAsyncAjax();  //함수 호출
        });

        $("#ajaxListDelete").hide();
    });

    const setInputValueJQ = function (inputID, inputVal) {
        $('#' + inputID).val(inputVal);
    }

    const setInputSelect = function (cd, nm, desc) {
        console.log(cd,nm,desc)

        setInputValueJQ('commCdUp', cd);
        setInputValueJQ('commNmUp', nm);
        setInputValueJQ('commDescUp', desc);

        $("#ajaxListDelete").show();
    }

    function cb_snow( result ) {
        console.log( result );
        let innerHtml = '';

        for(let i=0; i < result.length; i++) {
            innerHtml += '<tr>';
            innerHtml += '<td>' + (i+1) + '</td>'; //i+1은 괄호안에 담기
            innerHtml += '<td>' + result[i].commCd + '</td>';
            innerHtml += '<td><a href="javascript:setInputSelect(\''+ result[i].commCd +'\', \''+ result[i].commNm +'\', \''+ result[i].commDesc +'\')">' + result[i].commNm + '</a></td>';
            innerHtml += '<td>' + result[i].commDesc + '</td>';
            innerHtml += '</tr>';
        }

        $('#tbodylwjAjaxList').html(innerHtml);
    }

    //조회하는 function
    let selectCommList = function () {
        console.log($(formID).serialize());
        let strURL = "";

        //JS_COMMON > ctrl누르고 누르면 안에 들어갈 수 있음
        JS_COMMON.fn_callAjaxForm('/lwjAsyncAjaxList', $(formID).serialize(), 'GET', cb_snow, true);
    }

    let savelwjAsyncAjax = function () {
        JS_COMMON.fn_callAjaxForm('/savelwjAsyncAjax', $(formUp).serialize(), 'POST', cb_savelwjAsyncAjax, true);
    }

    let cb_savelwjAsyncAjax = function (result) {
        console.log(result);
        setInputValueJQ('commCdUp', "");
        setInputValueJQ('commNmUp', "");
        setInputValueJQ('commDescUp', "");
        selectCommList();
        //$("#ajaxListDelete").hide(); > 한 번 더 수정하고 싶으면 어떡하나
    }

    let deletelwjAsyncAjax = function () {
        JS_COMMON.fn_callAjaxForm('/deletelwjAsyncAjax', $(formUp).serialize(), 'POST', cb_deletelwjAsyncAjax, true);
    }

    let cb_deletelwjAsyncAjax = function (result) {
        console.log(result);
        selectCommList();
        $("#ajaxListDelete").hide();
    }
</script>
</html>
