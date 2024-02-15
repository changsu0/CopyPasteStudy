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
            <button class="btn btn-info" id="btnGetData">가져오기</button>
            <button class="btn btn-info" id="btnDel">삭제</button>
        </div>
    </div>
</form>

<br /><br />
    <table class="table table-striped">
        <thead>
            <tr>
                <th scope="col"><input type="checkbox" id="checkAll"/></th>
                <th scope="col"><input type="checkbox" id="checkToAll"/></th>
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
                                <select class="form-control" id="commCdPop">
                                </select>
                                <input type="text" class="form-control" id="commCdSelPop" placeholder="공통코드" name="commCd" value="${aseCommDtVO.commCd}">
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

    $(document).on('click', 'input[name=chk]', function (){
        bodyChk('checkAll','chk');
    }) ;
    $(document).on('click', 'input[name=chk1]', function (){
        bodyChk('checkToAll','chk1');
    });

    $(document).ready(function (){
        selectCommList();

        /* callback function : (좀 더 찾아보렴.) 어떤 이벤트가 발생한 후 수행될 함수
        *  JS에서 함수는 인자 전달 시 함수를 전달할 수 있기 때문에 콜백 함수가 가능.
        * */
        //이벤트
        $('#btnSearch').click(function (){
            selectCommList();
        });

        $('#checkAll').change(function (){

            // 클릭 이벤트 : 클릭되면 무조건 실행 (라디오 태그에서 이미 선택 되어있는 값을 선택 해도 실행됨)
            // 체인지 이벤트 : 클릭되어도 현재값에 변함이 없으면 실행하지 않음

            //체크 박스는 무조건 true와 false
            checkAll($(this), 'chk');
        });

        $('#checkToAll').change(function (){
            checkAll($(this), 'chk1');
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

        $('#btnGetData').click(function (){
            fn_getData('chk');
        });

        $('#btnDel').click(function (){
            fn_rowDel();
        });

    });

    let selectCommList = function (){
        JS_COMMON.fn_callAjaxForm('/selectAseAsyncList', $('#frmSearch').serialize(), 'GET', cb_commList, true);
    }

    function cb_commList( result ) {

        let innerHtml = '';
        let innerOption = '';
        let innerHtmlRadio = '';
        let innerHtmlCheck = '';

        for (let i = 0; i < result.length; i++) {
            innerHtml += '<tr>';

            innerHtml += '<td><input type="checkbox" name="chk" id="'+ i +'"/></td>';
            innerHtml += '<td><input type="checkbox" name="subChk" id="subChk'+ i +'"/></td>';

            innerHtml += '<td id="commCd'+ i +'">'+ result[i].commCd + '</td>';
            //innerHtml += '<td><select id="commCd'+ i +'">'+setSelect(result, result[i].commCd, 'select', i)+'</select></td>';
            innerHtml += '<td>'+setSelect(result, result[i].commCd, 'radio','commCdNm'+i) +'</td>';

            innerHtml += '<td><input type="text" id="commDesc'+ i +'" value="' + result[i].commDesc + '"></td>';
            innerHtml += '</tr>';

            //modal
            innerOption += '<option value="' + result[i].commCd + '">'+ result[i].commNm + '</option>';

            innerHtmlRadio += '<input type="radio" value="' + result[i].commCd + '" name="commCdPop">&nbsp;' + result[i].commCd + '<br />';

            innerHtmlCheck += '<input type="checkbox" value="' + result[i].commCd + '" name="commNmPop">&nbsp;' + result[i].commNm + '<br />';
        }

        /* 공통 코드 라디오 구현 */
        $('#codeRadio').html(innerHtmlRadio);

        /* 공통 코드명 체크 박스 구현*/
        $('#nameChk').html(innerHtmlCheck);

        /* 공통 코드 selectBox 구현*/
        //$('#commCdPop').html(innerOption);

        $('#tbodyCommList').html(innerHtml);
    }

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
        setInputValueJQ('commCdSelPop',commCd);

        setInputValueJQ('commDescPop',commDesc);


        $("#btnDelete").css("visibility","visible");
        $('#commCdPop').focus();
    }

    const setSelect = function ( result, commCd, type, name ){

        let innerHtml = '';

        for (let i = 0; i < result.length; i++) {
            if( result[i].commCd === commCd) {
                if( type === 'select') {
                    innerHtml += '<option value="' + result[i].commCd + '" selected>' + result[i].commNm + '</option>';
                }else if( type === 'radio'){
                    innerHtml += '<input type="radio" value="' + result[i].commCd + '" name="'+ name +'" checked />&nbsp;' + result[i].commNm;
                }
            }else{
                if( type === 'select') {
                    innerHtml += '<option value="' + result[i].commCd + '">' + result[i].commNm + '</option>';
                }else if( type === 'radio'){
                    innerHtml += '<input type="radio" value="' + result[i].commCd + '" name="'+ name +'" />&nbsp;' + result[i].commNm;
                }
            }
        }
        return innerHtml; //결과 리턴

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

    const bodyChk = function(id, name) {
        let chkCnt = $('input[name=' + name + ']').length;
        let checkCnt = $('input[name=' + name + ']:checked').length;

        if(chkCnt === checkCnt){
            $('#'+id).prop('checked', true);
        }else{
            $('#'+id).prop('checked', false);
        }

    }

    const fn_getData = function(name) {
        // let checkObj = $('input[name=' + name + ']:checked');
        $('input[name=' + name + ']:checked').each(function (){
            let rowIndex = $(this).attr('id');
            //get 함수를 사용하여 코드 완성 !!!!!되도록이면 지금까지 했던 함수를 사용하여 코드 완성!!!!!!!!
            console.log(rowIndex);
            let rowDescVal = $('#commDesc'+rowIndex).val();
            let rowNmVal = $('input[name=commCdNm' + rowIndex + ']:checked').val();
            let rowCdVal = $('#commCd'+rowIndex).val();

            console.log('공통코드 : ' + rowCdVal);
            console.log('공통코드명 : ' + rowNmVal);
            console.log('공통코드설명 : ' + rowDescVal);
        });


    }

    const checkAll = function (thisChk, name){
        if(thisChk.is(':checked')){
            $('input[name="'+ name +'"]').prop('checked', true);
        }else {
            $('input[name="'+ name +'"]').prop('checked', false);
        }
    }

    const fn_rowDel = function (){
        let delList = [];
        let delMap = {};

        $('input[name=chk]:checked').each(function () {
            let rowIndex = $(this).attr('id');
            let rowCdVal = $('#commCd' + rowIndex).text();
            console.log(rowIndex, rowCdVal);

            delList.push(rowCdVal);

        });
        delMap.commCd = delList.toString();
        // or J/S에서 json 방식으로만 사용 가능한 문법 : delMap['commCd'] = delList.toString();
        console.log(delMap);

        JS_COMMON.fn_callAjaxJson('/delAseCommCd', delMap, 'post', cb_rowDel);
    }

    const cb_rowDel = function (){
        selectCommList();
    }



</script>

</html>
