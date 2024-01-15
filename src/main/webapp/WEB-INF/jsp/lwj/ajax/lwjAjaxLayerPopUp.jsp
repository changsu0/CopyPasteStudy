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
        <th scope="col">
            <input type="checkbox" id="gridChk">
        </th>
        <th scope="col">
            <input type="checkbox" id="gridNextChk">
        </th>
        <th scope="col">공통코드</th>
        <th scope="col">공통코드명</th>
        <th scope="col">공통코드설명</th>
    </tr>
    </thead>
    <tbody id="tbodylwjAjaxList">
    </tbody>
</table>
<div class="modal" id="modal"  role="dialog" aria-labelledby="remoteModalLabel" aria-hidden="true" >
    <div class="modal-dialog" style="width:850px;">
        <div class="modal-content" >
            <div class="modal-header">
            </div>
            <div class="modal-body">
                <div class="form-row align-items-center">
                    <div class="col-auto">
                        <label class="sr-only" for="commCd">comm_cd</label>
                        <div class="input-group mb-2">
                            <div class="input-group-prepend">
                                <div class="input-group-text">공통코드</div>
                            </div>
                            <select class="form-control" id="commNmLayer"></select>
                            <div class="input-group-prepend">
                                <div id="radioLayer">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-auto">
                        <label class="sr-only" for="commCd">comm_cd</label>
                        <div class="input-group mb-2">
                            <div class="input-group-prepend">
                                <div class="input-group-text">공통이름</div>
                            </div>
                            <div id="checkLayer">
                            </div>
                        </div>
                    </div>
                    <div class="col-auto">
                        <label class="sr-only" for="commDesc">comm_desc</label>
                        <div class="input-group mb-2">
                            <div class="input-group-prepend">
                                <div class="input-group-text">공통코드설명</div>
                            </div>
                            <input type="text" class="form-control" id="commDescLayer" placeholder="공통코드설명" name="commDesc" value="${lwjCommDtVO.commDesc}">
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
    $(document).on('click', '[name=rowChk]', function() {
        bodyChk('gridChk', 'rowChk');
    });

    $(document).on('click', '[name=rowNextChk]', function() {
        bodyChk('gridNextChk', 'rowNextChk');
    });

    $(document).ready(function() {
        selectCommList();

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

    //체크박스 전체 체크/해제
    $('#gridChk').change(function() {
        chkAll('gridChk', 'rowChk');
    });

    $('#gridNextChk').change(function() {
        chkAll('gridNextChk', 'rowNextChk');
    });

    //체크박스 전체 체크/해제
    const chkAll = function (headChk, name) {
        if( $('#' + headChk).is(':checked') ) {
            $('input[name=' + name + ']').prop('checked', true);
        } else {
            $('input[name=' + name + ']').prop('checked', false);
        }
    }

    // 전체 체크박스 중 row 체크에 따라 상단 체크박스 체크/해제
    const bodyChk = function (id, name) {
        let total = $('input[name=' + name +']').length;
        let checked = $('input[name=' + name +']:checked').length;

        if (total === checked) {
            $('#' + id).prop('checked', true);
        } else {
            $('#' + id).prop('checked', false);
        }
    }

    const setInputValueJQ = function (inputID, inputVal) {
        $('#' + inputID).val(inputVal);
    }

    const setRadioValueJQ = function (radioName, radioVal) {
        //선택지 여러개, 단일선택, Name으로 그룹핑
        $('input[name=' + radioName + ']').each(function () {
            if($(this).val() === radioVal) {
                $(this).prop('checked', true);
                return false;
            }
        });
    }

    const setCheckValuesJQ = function(chkName, chkValList) {
        $('input[name=' + chkName + ']').prop('checked', false);

        $('input[name=' + chkName + ']').each(function () {
            for (let i = 0; i < chkValList.length; i++) {
                if($(this).val() === chkValList[i]) {
                    $(this).prop('checked', true);
                    break;
                }
            }
        });
    }

    let win;
    const setInputSelect = function (cd, nm, desc) {
        win = window.open("/lwjAjaxPopUp?commCd=" + cd + "&commNm=" + nm + "&commDesc=" + desc, "_blank", "toolbar=yes,scrollbars=yes,resizable=yes,top=500,left=500,width=400,height=400");

        return;

        setInputValueJQ('commCdUp', cd);
        setInputValueJQ('commNmUp', nm);
        setInputValueJQ('commDescUp', desc);
        $('#commCdUp').attr("readonly", true);

        $("#ajaxListDelete").show();
    }

    const layerPopUp = function (cd, nm, desc) {
        setInputValueJQ('commDescLayer', '');

        setInputValueJQ('commNmLayer', cd); //SelectBox
        setRadioValueJQ('radioLayer', cd);
        setCheckValuesJQ('checkLayer', cd);
        setInputValueJQ('commDescLayer', desc);

        $("#modal").modal("show");
    }

    const rowSelect = function (rstData, commCd) {
        let innerSelect = '<select>';

        for(let i=0; i < rstData.length; i++) {
            if(commCd === rstData[i].commCd) {
                innerSelect += '<option value="' + rstData[i].commCd + '" selected>'+ rstData[i].commCd + '</option>';
            } else {
                innerSelect += '<option value="' + rstData[i].commCd + '">'+ rstData[i].commCd + '</option>';
            }
        }
        innerSelect += '</select>';

        return innerSelect;
    }

    const rowRadio = function (rstData, commCd, name) {
        let innerRadio = '';

        for(let i=0; i < rstData.length; i++) {
            if (commCd === rstData[i].commCd) {
                innerRadio += '<input type="radio" name="rdoName' + name + '" value="' + rstData[i].commCd + '" checked />' + rstData[i].commNm
            } else {
                innerRadio += '<input type="radio" name="rdoName' + name + '" value="' + rstData[i].commCd + '" />' + rstData[i].commNm
            }
        }

        console.log(innerRadio);

        return innerRadio;
    }

    function cb_snow( result ) {
        let innerHtml = '';
        let layerOption = ''; //SelectBox
        let layerRadio = '';
        let layerCheck = '';

        for(let i=0; i < result.length; i++) {
            innerHtml += '<tr>';
            innerHtml += '<td><input type="checkbox" name="rowChk"></td>'; //i+1은 괄호안에 담기
            innerHtml += '<td><input type="checkbox" name="rowNextChk"></td>';
            innerHtml += '<td>' + rowSelect(result, result[i].commCd) + '</td>';
            innerHtml += '<td>' + rowRadio(result, result[i].commCd, i) + '</td>';
            innerHtml += '<td>' + result[i].commDesc + '</td>';
            innerHtml += '</tr>';

            layerOption += '<option value="' + result[i].commCd + '">' + result[i].commNm + '</option>'; //SelectBox
            layerRadio += '<input type="radio" name="layerRadioCommcd" value="' + result[i].commCd + '">' + result[i].commCd;
            layerCheck += '<input type="checkbox" name="layerCheckCommcd" value="' + result[i].commCd + '">' + result[i].commNm;
        }

        $('#tbodylwjAjaxList').html(innerHtml); //Table 동적그리기
        $('#commNmLayer').html(layerOption); //SelectBox
        $('#radioLayer').html(layerRadio);
        $('#checkLayer').html(layerCheck);
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
        setInputValueJQ('commCdUp', "");
        setInputValueJQ('commNmUp', "");
        setInputValueJQ('commDescUp', "");
        selectCommList();
        $("#ajaxListDelete").hide();
    }

    function parentAlert(cd, nm, desc) {
        setInputValueJQ('commCdUp', cd);
        setInputValueJQ('commNmUp', nm);
        setInputValueJQ('commDescUp', desc);
        win.close();
    }

</script>
</html>
