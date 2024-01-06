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

<h3>ASE Layer</h3>
<br />

<form id="frmSearch" onsubmit="return false">
    <div class="form-row align-items-center">
        <div class="col-auto">
            <label class="sr-only" for="commCd">공통코드</label>
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">공통코드</div>
                </div>
                <input type="text" class="form-control" id="commCd" placeholder="공통코드" name="commCd" value="${aseCommDtVO.commCd}">
            </div>
        </div>
        <div class="col-auto">
            <label class="sr-only" for="commNm">공통코드명</label>
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">공통코드명</div>
                </div>
                <input type="text" class="form-control" id="commNm" placeholder="공통코드명" name="commNm" value="${aseCommDtVO.commNm}">
            </div>
        </div>
        <div class="col-auto">
            <label class="sr-only" for="commDesc">공통코드설명</label>
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">공통코드설명</div>
                </div>
                <input type="text" class="form-control" id="commDesc" placeholder="공통코드설명" name="commDesc" value="${aseCommDtVO.commDesc}">
            </div>
        </div>
        <div class="col-auto">
            <button class="btn btn-info" id="btnSearch">조회</button>
        </div>
    </div>
</form>

<br /><br />
    <table class="table table-striped">
        <thead>
            <tr>
                <th scope="col">#</th>
                <th scope="col">공통코드</th>
                <th scope="col">공통코드명</th>
                <th scope="col">공통코드설명</th>
            </tr>
        </thead>
        <tbody id="tbodyCommList">

        </tbody>
    </table>

    <div class="modal" id="modal" role="dialog" aria-labelledby="remoteModalLabel" aria-hidden="true" >
        <div class="modal-dialog">
            <div class="modal-content" >
                <div class="modal-body">
                    <div class="form-row align-items-center">
                        <div class="col-auto">
                            <label class="sr-only" for="commCd">공통코드</label>
                            <div class="input-group mb-2">
                                <div class="input-group-prepend">
                                    <div class="input-group-text">&nbsp;&nbsp;&nbsp;&nbsp;공통코드 &nbsp;&nbsp;&nbsp;</div>
                                </div>
                                <div class="input-group-prepend">
                                    <div class="input-group-text" style="width: 204px">
                                        <div id="codeRadio" style="text-align: left">
                                        </div>
                                    </div>
                                </div>
<%--                                <select class="form-control" id="commCdPop">--%>
<%--                                </select>--%>
<%--                                <input type="text" class="form-control" id="commCdPop" placeholder="공통코드" name="commCd" value="${aseCommDtVO.commCd}">--%>
                            </div>
                        </div>
                        <div class="col-auto">
                            <label class="sr-only" for="commNm">공통코드명</label>
                            <div class="input-group mb-2" id>
                                <div class="input-group-prepend">
                                    <div class="input-group-text">&nbsp;&nbsp;공통코드명&nbsp;&nbsp;</div>
                                </div>
                                <div class="input-group-prepend">
                                    <div class="input-group-text" style="width: 206px">
                                        <div id="nameChk" style="text-align: left">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-auto">
                            <label class="sr-only" for="commDesc">공통코드설명</label>
                            <div class="input-group mb-2">
                                <div class="input-group-prepend">
                                    <div class="input-group-text">공통코드설명</div>
                                </div>
                                <input type="text" class="form-control" id="commDescPop" placeholder="공통코드설명" name="commDesc" value="${aseCommDtVO.commDesc}">
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
    $(document).ready(function (){
        /* callback function : (좀 더 찾아보렴.) 어떤 이벤트가 발생한 후 수행될 함수
        *  JS에서 함수는 인자 전달 시 함수를 전달할 수 있기 때문에 콜백 함수가 가능.
        * */
        //이벤트
        $('#btnSearch').click(function (){
            selectCommList();
        });

        $('#btnSave').click(function (){
            saveCommAjax();
        });

        $('#btnDelete').click(function (){
            delCommAjax();
        });

        $('#commCdPop').on("propertychange change keyup paste input", function (){
            changeVal();
        });

    });

    const setInputValueJQ = function(inputID, inputVal){
        $('#'+ inputID).val(inputVal);
    }

    const setRadioValueJQ = function (radioName, radioVal){
        $('input[name=' + radioName + ']').prop('checked', false);

        $('input[name=' + radioName + ']').each(function (){
            if( $(this).val() === radioVal ){
                $(this).prop('checked', true);
                return false;
            }
        });
    }

    const setInputSelect = function(commCd, commNm, commDesc){
        var win = window.open("/aseAjaxPopupList?commCd="+commCd+"&commNm="+commNm+"&commDesc="+commDesc+"", "_blank", "toolbar=yes,scrollbars=yes,resizable=yes,top=500,left=500,width=1200,height=400");

    }

    const setInputModal = function(commCd, commNm, commDesc){
        setInputValueJQ('commNmPop','');
        setInputValueJQ('commDescPop','');

        $('#modal').modal('show');

        setRadioValueJQ('commCdPop', commCd);
        setRadioValueJQ('commNmPop', commCd);
        //setInputValueJQ('commCdPop',commCd);
        setInputValueJQ('commDescPop',commDesc);


        $("#btnDelete").css("visibility","visible");
        $('#commCdPop').focus();
    }


    function cb_commList( result ) {

        let innerHtml = '';

        let innerHtmlOption = '';

        let innerHtmlRadio = '';

        let innerHtmlCheck = '';

        for (let i = 0; i < result.length; i++) {
            innerHtml += '<tr>';
            innerHtml += '<td>'+ (i+1) +'</td>';
            innerHtml += '<td><a href="javascript:setInputModal(\''+ result[i].commCd +'\',\''+ result[i].commNm +'\',\''+ result[i].commDesc +'\')">'+ result[i].commCd +'</a></td>';
            innerHtml += '<td><a href="javascript:setInputSelect(\''+ result[i].commCd +'\',\''+ result[i].commNm +'\',\''+ result[i].commDesc +'\')">'+ result[i].commNm +'</a></td>';
            innerHtml += '<td>'+ result[i].commDesc +'</td>';
            innerHtml += '</tr>';

            innerHtmlOption += '<option value="' + result[i].commCd + '">'+ result[i].commNm + '</option>';

            innerHtmlRadio += '<input type="radio" value="' + result[i].commCd + '" name="commCdPop">&nbsp;' + result[i].commCd + '<br />';

            innerHtmlCheck += '<input type="checkbox" value="' + result[i].commCd + '" name="commNmPop">&nbsp;' + result[i].commNm + '<br />';
        }

        /* 공통 코드 라디오 구현 */
        $('#codeRadio').html(innerHtmlRadio);

        /* 공통 코드명 체크박스 구현*/
        $('#nameChk').html(innerHtmlCheck);

        /* 공통 코드 selectBox 구현*/
        //$('#commCdPop').html(innerHtmlOption);

        $('#tbodyCommList').html(innerHtml);
    }

    let selectCommList = function (){
        JS_COMMON.fn_callAjaxForm('/selectAseAsyncList', $('#frmSearch').serialize(), 'GET', cb_commList, true);
    }

    let saveCommAjax = function (){
        JS_COMMON.fn_callAjaxForm('/saveAseAsyncAjax', $('#frmSave').serialize(), 'POST', cb_saveCommAjax, true);
    }

    function cb_saveCommAjax( result ) {
        JS_COMMON.fn_formReset('frmSave');
        selectCommList(); //저장 후 조회
    }

    let delCommAjax = function (){
        JS_COMMON.fn_callAjaxForm('/delAseAsyncAjax', $('#frmSave').serialize(), 'POST', cb_delCommAjax, true);
    }

    function cb_delCommAjax() {
        JS_COMMON.fn_formReset('frmSave');
        selectCommList(); //저장 후 조회
        $("#btnDelete").css("visibility","hidden");
    }

    let changeVal = function (){
        $("#btnDelete").css("visibility","hidden");
    }

    function parentAlert(cdVal, nmVal, descVal){
        $('#commCdPop').val(cdVal);
        $('#commNmPop').val(nmVal);
        $('#commDescPop').val(descVal);
    }

</script>

</html>
