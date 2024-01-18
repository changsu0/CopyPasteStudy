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
<br/>
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
            <button id="getValues" class="btn btn-info">가져오기</button>
            <button id="btnDel" class="btn btn-danger">삭제</button>
        </div>
    </div>
</form:form>
<br />
<table class="table table-striped">
    <thead>
    <tr>
        <th scope="col"><input type="checkbox" id="chkAll"></th>
        <th scope="col"><input type="checkbox" id="chkAll2"></th>
        <th scope="col">공통코드</th>
        <th scope="col">공통코드명</th>
        <th scope="col">공통코드설명</th>
    </tr>
    </thead>
    <tbody id="tbodySampleList">
    </tbody>
</table>
<div class="modal" id="modal"  role="dialog" aria-labelledby="remoteModalLabel" aria-hidden="true" style="max-width:750px;">
    <div class="modal-dialog" style="max-width:700px;">
        <div class="modal-content" >
            <div class="modal-header">
            </div>
            <div class="modal-body">
                <div class="form-row align-items-center">
                    <div class="col-auto">
                        <label class="sr-only" for="commCd">공통코드</label>
                        <div class="input-group mb-2">
                            <div class="input-group-prepend">
                                <div class="input-group-text">공통코드</div>
                            </div>
                            <select class="form-control" id="commCdSelect"></select>
                        </div>
                    </div>
                </div>
                <div class="form-row align-items-center">
                    <div class="col-auto">
                        <div class="input-group mb-2">
                            <div class="form-control" id="commCdRdo"></div>
                        </div>
                    </div>
                </div>
                <div class="form-row align-items-center">
                    <div class="col-auto">
                        <div class="input-group mb-2">
                            <div class="form-control" id="commCdChk"></div>
                        </div>
                    </div>
                </div>
                <div class="form-row align-items-center">
                    <div class="col-auto">
                        <label class="sr-only" for="commDesc">공통코드설명</label>
                        <div class="input-group mb-2">
                            <div class="input-group-prepend">
                                <div class="input-group-text">공통코드설명</div>
                            </div>
                            <input type="text" class="form-control" id="commDescLayer" placeholder="공통코드설명" name="commDescLayer" value="${yjsCommDtVO.commDesc}">
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
                <button type="button" class="btn btn-primary" id="btn_save">저장</button>
            </div>
        </div>
    </div>
</div>
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

        $('#getValues').click(function (){
            getChkedRow();
        });

        $('#searchMem').click(function(){
            selectMemList();
        });

        $('#chkAll').click(function(){
            headChk('chkAll', 'chkOne');
        });
        $('#chkAll2').click(function(){
            headChk('chkAll2', 'chkTwo');
        });
        $('#btnDel').click(function(){
            chkRowDel();
        });

    });

    $(document).on('click', '[name=chkOne]', function(){
        bodyChk('chkAll', 'chkOne');
    });

    $(document).on('click', '[name=chkTwo]', function(){
        bodyChk('chkAll2', 'chkTwo');
    });

    const chkRowDel = function(){
        let delRow = [];
        $('input[name=chkOne]:checked').each(function () {
            let ChkIndex = $(this).attr('id');
            let cdVal = $('#commCd' + ChkIndex).text();
            delRow.push(cdVal);
        });
        console.log(delRow.toString());
        let delRowParam = {};
        delRowParam.commCd = delRow.toString();
        delRowParam['commNm'] = '이름';

        JS_COMMON.fn_callAjaxJson('/delCommCd', {commCd:delRow.toString(), commNm : '이름'}, 'post', cb_chkRowDel, true);
    }

    function cb_chkRowDel(result) {

    }

    const getChkedRow = function(){
        $('input[name=chkOne]:checked').each(function () {
            let ChkIndex = $(this).attr('id');
            console.log(ChkIndex);
            let cdVal = $('#commCd' + ChkIndex).val();
            let nmVal = $('input[name=commNm' + ChkIndex + ']:checked').val();
            let descVal = $('#commDesc' + ChkIndex).val();
            console.log('코드=',cdVal,', 코드명=',nmVal,', 코드설명=',descVal);
        });
    }

    const bodyChk = function(chkId, chkNm){
        let chkCnt = $("input[name="+chkNm+"]").length;
        let chkedCnt = $("input[name="+chkNm+"]:checked").length;
        if(chkCnt === chkedCnt){
            $('#'+chkId).prop('checked', true);
        } else {
            $('#'+chkId).prop('checked', false);
        }
    }

    const headChk = function(chkId, chkNm){
        if($('#'+chkId).is(':checked') == true){
            $("input[name="+chkNm+"]").prop('checked', true);
        }else{
            $("input[name="+chkNm+"]").prop("checked", false);
        }
    }

    const setInputValue = function(inputID, inputVal) {
        $('#'+inputID).val(inputVal);
    }
    const setRdoVal = function(radioName, radioVal) {
        $('input[name=' + radioName + ']').prop('checked', false);
        $('input[name=' + radioName + ']').each(function () {
            if ($(this).val() === radioVal ) {
                // console.log ($(this).val());
                $(this).prop('checked', true);
                return false;
            }

        });
    }
    let win;
    const setInputSelect = function(code,name,desc) {

        win = window.open("/yjsAjaxPopUp?commCd="+code+"&commNm="+name+"&commDesc="+desc, "_blank", "toolbar=yes,scrollbars=yes,resizable=yes,top=500,left=500,width=400,height=400");

        return;
        console.log(code,name,desc);
        $('#delete').show();
        setInputValue('commCdForm', code);
        setInputValue('commNmForm', name);
        setInputValue('commDescForm', desc);
    }
    const openLayerPop = function(code,name,desc) {

        console.log(code,name,desc);
        setInputValue('commCdSelect', code);
        setRdoVal('commCdRdo', code);
        setRdoVal('commCdChk', code);
        setInputValue('commDescLayer', desc);

        $("#modal").modal("show");
    }

    const innerSelRdoFc = function(type, rstData, commCd, RdoCnt) {
        let innerSelRdo = '';
        for (let i = 0; i < rstData.length; i++) {
            if (rstData[i].commCd === commCd) {
                if (type === 'select') {
                    innerSelRdo += '<option value="' + rstData[i].commCd + '" selected>' + rstData[i].commCd + '</option>'
                } else if (type === 'radio') {
                    innerSelRdo += '<input type="radio" name ="commNm' + RdoCnt + '" value="' + rstData[i].commCd + '" checked />' + rstData[i].commNm + ' ';
                }
            } else {
                if (type === 'select') {
                    innerSelRdo += '<option value="' + rstData[i].commCd + '">' + rstData[i].commCd + '</option>'
                } else if (type === 'radio') {
                    innerSelRdo += '<input type="radio" name ="commNm' + RdoCnt + '" value="' + rstData[i].commCd + '" />' + rstData[i].commNm + ' ';
                }
            }
        }
        return innerSelRdo;
    }

    function cb_snow(result) {
        console.log(result);
        let innerHtml = '';
        let commCdSelect = '';
        let commCdRdo = '';
        let commCdChk = '';
        for (let i = 0; i < result.length; i++) {
            innerHtml += '<tr>';

            innerHtml += '<td><input type="checkbox" name="chkOne" id="' + i +'"></td>';
            innerHtml += '<td><input type="checkbox" name="chkTwo"></td>';
            innerHtml += '<td id="commCd' + i + '">' + result[i].commCd + '</td>';
            innerHtml += '<td>' + innerSelRdoFc('radio', result, result[i].commCd, i) + '</td>';
            innerHtml += '<td><input type="text" id="commDesc' + i + '" value="' + result[i].commDesc + '"></td>';
            innerHtml += '</tr>';

            commCdSelect += '<option value="' + result[i].commCd + '">' + result[i].commNm +'</option>';
            commCdRdo += '<input type="radio" name="commCdRdo" value="' + result[i].commCd +'"/> ' + result[i].commCd + '  ';
            commCdChk += '<input type="checkbox" name="commCdChk" value="' + result[i].commCd + '"> ' + result[i].commNm + '  ';
        }
        $('#tbodySampleList').html(innerHtml);
        console.log(innerHtml);
        $('#commCdSelect').html(commCdSelect);
        $('#commCdRdo').html(commCdRdo);
        $('#commCdChk').html(commCdChk);

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

    function parentAlert(code, name, desc) {
        setInputValue('commCd', code);
        setInputValue('commNm', name);
        setInputValue('commDesc', desc);
        win.close();
    }
</script>
</html>
