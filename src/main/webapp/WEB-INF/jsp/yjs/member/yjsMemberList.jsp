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
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>
<head>
    <meta charset="utf-8">
    <%@ include file="/WEB-INF/jsp/common/header.jsp" %>
</head>
<body>
<jsp:include page="/WEB-INF/jsp/common/nav.jsp" />

<h3>Yjs 회원가입 신청 LIST</h3>
<br />

<form:form action="/yjsMemberList" method="get">
    <div class="form-row align-items-center">
        <div class="col-auto">
            <label class="sr-only" for="memName">이름</label>
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">이름</div>
                </div>
                <input type="text" class="form-control" id="memName" placeholder="이름" name="memName" value="${yjsMemberVO.memName}">
            </div>
        </div>
        <div class="col-auto">
            <label class="sr-only" for="memRegNum">주민번호</label>
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">주민번호</div>
                </div>
                <input type="text" class="form-control" id="memRegNum" placeholder="주민번호" name="memRegNum" value="${yjsMemberVO.memRegNum}">
            </div>
        </div>
        <div class="col-auto">
            <label class="sr-only" for="memPhone">전화번호</label>
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">전화번호</div>
                </div>
                <select class="form-control" id="memPhone" name="memPhone">
                    <option value="">-선택-</option>
                    <option value="010" <c:if test="${selectNum == '010'}">selected="selected"</c:if>>010</option>
                    <option value="011" <c:if test="${selectNum == '011'}">selected="selected"</c:if>>011</option>
                    <option value="012" <c:if test="${selectNum == '012'}">selected="selected"</c:if>>012</option>
                    <option value="013" <c:if test="${selectNum == '013'}">selected="selected"</c:if>>013</option>
                </select>
            </div>
        </div>
        <div class="col-auto">
            <label class="sr-only">국가</label>
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">국가</div>
                </div>
                <div class="form-control">
                    <input type='radio' name='memRdo' value='' <c:if test="${empty selectRdo}">checked="checked"</c:if>>미선택
                    <input type='radio' name='memRdo' value='E' <c:if test="${selectRdo == 'E'}">checked="checked"</c:if>>유럽
                    <input type='radio' name='memRdo' value='S' <c:if test="${selectRdo == 'S'}">checked="checked"</c:if>/>동남아
                    <input type='radio' name='memRdo' value='J' <c:if test="${selectRdo == 'J'}">checked="checked"</c:if>/>일본
                </div>
            </div>
        </div>
        <div class="col-auto">
            <label class="sr-only">취미</label>
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">취미</div>
                </div>
                <div class="form-control">
                    <input type="checkbox" name="memChk" value="C" <c:if test = "${fn:contains(selectChk, 'C')}">checked="checked"</c:if>>CRUD
                    <input type="checkbox" name="memChk" value="Q" <c:if test = "${fn:contains(selectChk, 'Q')}">checked="checked"</c:if>>Query
                    <input type="checkbox" name="memChk" value="F" <c:if test = "${fn:contains(selectChk, 'F')}">checked="checked"</c:if>>Function
                    <input type="checkbox" name="memChk" value="P" <c:if test = "${fn:contains(selectChk, 'P')}">checked="checked"</c:if>>Procedure
                </div>
            </div>
        </div>
        <div class="col-auto">
            <button name="action" class="btn btn-info" type="submit">조회</button>
        </div>
    </div>
    <div class="form-row align-items-center">
        <div class="col-auto">
            <label class="sr-only" for="inputName_JQ">이름_JQ</label>
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">이름_JQ</div>
                </div>
                <input type="text" class="form-control" id="inputName_JQ" placeholder="이름" name="inputName_JQ" value="${yjsMemberVO.memName}">
            </div>
        </div>
        <div class="col-auto">
            <label class="sr-only" for="inputReg_JQ">주민번호_JQ</label>
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">주민번호_JQ</div>
                </div>
                <input type="text" class="form-control" id="inputReg_JQ" placeholder="주민번호" name="inputReg_JQ" value="${yjsMemberVO.memRegNum}">
            </div>
        </div>
        <div class="col-auto">
            <label class="sr-only" for="selPhone_JQ">전화번호_JQ</label>
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">전화번호_JQ</div>
                </div>
                <select class="form-control" id="selPhone_JQ" name="selPhone_JQ">
                    <option value="">-선택-</option>
                    <option value="010">010</option>
                    <option value="011">011</option>
                    <option value="012">012</option>
                    <option value="013">013</option>
                </select>
            </div>
        </div>
        <div class="col-auto">
            <label class="sr-only">국가_JQ</label>
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">국가_JQ</div>
                </div>
                <div class="form-control">
                    <input type='radio' name='rdoHo_JQ' value='' />미선택
                    <input type='radio' name='rdoHo_JQ' value='E'/>유럽
                    <input type='radio' name='rdoHo_JQ' value='S'/>동남아
                    <input type='radio' name='rdoHo_JQ' value='J'/>일본
                </div>
            </div>
        </div>
        <div class="col-auto">
            <label class="sr-only">취미_JQ</label>
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">취미_JQ</div>
                </div>
                <div class="form-control">
                    <input type="checkbox" name="chkTech_JQ" value="C">CRUD
                    <input type="checkbox" name="chkTech_JQ" value="Q">Query
                    <input type="checkbox" name="chkTech_JQ" value="F">Function
                    <input type="checkbox" name="chkTech_JQ" value="P">Procedure
                </div>
            </div>
        </div>
    </div>
    <div class="form-row align-items-center">
        <div class="col-auto">
            <label class="sr-only" for="inputName_JN">이름_JN</label>
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">이름_JN</div>
                </div>
                <input type="text" class="form-control" id="inputName_JN" placeholder="이름" name="inputName_JN" value="${yjsMemberVO.memName}">
            </div>
        </div>
        <div class="col-auto">
            <label class="sr-only" for="inputReg_JN">주민번호_JN</label>
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">주민번호_JN</div>
                </div>
                <input type="text" class="form-control" id="inputReg_JN" placeholder="주민번호" name="inputReg_JN" value="${yjsMemberVO.memRegNum}">
            </div>
        </div>
        <div class="col-auto">
            <label class="sr-only" for="selPhone_JN">전화번호_JN</label>
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">전화번호_JN</div>
                </div>
                <select class="form-control" id="selPhone_JN" name="selPhone_JN">
                    <option value="">-선택-</option>
                    <option value="010">010</option>
                    <option value="011">011</option>
                    <option value="012">012</option>
                    <option value="013">013</option>
                </select>
            </div>
        </div>
        <div class="col-auto">
            <label class="sr-only">국가_JN</label>
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">국가_JN</div>
                </div>
                <div class="form-control">
                    <input type='radio' name='rdoHo_JN' value='' />미선택
                    <input type='radio' name='rdoHo_JN' value='E'/>유럽
                    <input type='radio' name='rdoHo_JN' value='S'/>동남아
                    <input type='radio' name='rdoHo_JN' value='J'/>일본
                </div>
            </div>
        </div>
        <div class="col-auto">
            <label class="sr-only">취미_JN</label>
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">취미_JN</div>
                </div>
                <div class="form-control">
                    <input type="checkbox" name="chkTech_JN" value="C">CRUD
                    <input type="checkbox" name="chkTech_JN" value="Q">Query
                    <input type="checkbox" name="chkTech_JN" value="F">Function
                    <input type="checkbox" name="chkTech_JN" value="P">Procedure
                </div>
            </div>
        </div>
    </div>
</form:form>
<button id="btnJJan" class="btn btn-info">쨘!!!</button>
<br /><br />
    <table class="table table-striped">
        <thead>
        <tr>
            <th scope="col">#</th>
            <th scope="col">이름</th>
            <th scope="col">전화번호</th>
            <th scope="col">주민번호</th>
            <th scope="col">취미</th>
            <th scope="col">국가</th>
            <th scope="col">설명</th>
            <th scope="col">등록일자</th>
            <th scope="col">승인일자</th>
            <th scope="col">승인여부</th>
        </tr>
        </thead>
        <tbody>
            <c:forEach var="list" items="${selectYjsMemberList}" varStatus="status">
                <tr>
                    <td scope="row"><c:out value="${status.count}" /></td>
                    <td>${list.memName}</td>
                    <td>${list.memPhone}</td>
                    <td>${list.memRegNum}</td>
                    <td>${list.memChk}</td>
                    <td>${list.memRdo}</td>
                    <td>${list.memDesc}</td>
                    <td>${list.temDt}</td>
                    <td>${list.memDt}</td>
                    <c:choose>
                        <c:when test="${empty list.memDt}">
                            <td><button type="button" onclick="location.href='/yjsMemberForm?memUid=${list.memUid}'" class="btn btn-outline-success">승인</button></td>
                        </c:when>
                        <c:otherwise>
                            <td></td>
                        </c:otherwise>
                    </c:choose>
                </tr>
            </c:forEach>
        </tbody>
    </table>

<script>

    var setInputValue = function(inputID, inputVal) {
        document.getElementById(inputID).value = inputVal;
    }

    function setSelectValue(selectID, selectVal) {
        var memPhone = document.getElementById(selectID);
        for (var i = 0; i < memPhone.options.length; i++) {
            var memPhoneOne = memPhone.options[i];
            if (memPhoneOne.value === selectVal) {
                memPhoneOne.selected = true;
            }
        }
    }

    function setRdoVal(radioID, radioVal) {
        var memRdo = document.getElementsByName(radioID);
        for (var i = 0; i < memRdo.length; i++) {
            var memRdoOne = memRdo[i];
            if (memRdoOne.value === radioVal) {
                memRdoOne.checked = true;
            }
        }
    }

    function setChkVal(checkName, checkValList) {
        var memChk = document.getElementsByName(checkName);
        for (var i = 0; i < memChk.length; i++) {
            var memChkOne = memChk[i];
            for (var j = 0; j < checkValList.length; j++) {
                var valOne = checkValList[j];
                console.log('valOne = ', valOne);
                if (memChkOne.value === valOne) {
                    memChkOne.checked = true;
                    break;
                }
            }
        }
    }

    const setInputValueJQ = function(inputID, inputVal) {
        $('#'+inputID).val(inputVal);
    }

    const getIDValueJQ = function(inputID) {
        return $('#'+inputID).val();
    }

    const getRdoValueJQ = function(inputName) {
        return $('input[name=' + inputName + ']:checked').val();
    }
    const getChkValueJQ = function(inputName) {
        let chk_arr = [];
        $('input[name='+inputName+']').each(function () {
            if($(this).is(":checked") === true){
                chk_arr.push($(this).val());
            }
        });
        return chk_arr;
    }

    const setSelectValueJQ = function(selectID, selectVal) {
        $('#' + selectID + ' option').each(function () {
            if ($(this).val() === selectVal ) {
                // console.log ($(this).val());
                $(this).prop('selected', true);
                return false;
            }
        });
    }

    const setRdoValJQ = function(radioName, radioVal) {
        $('input[name=' + radioName + ']').each(function () {
            if ($(this).val() === radioVal ) {
                // console.log ($(this).val());
                $(this).prop('checked', true);
                return false;
            }

        });
    }

    const setChkValJQ = function(checkName, checkValList) {
        $('input[name=' + checkName + ']').each(function () {
            // console.log($(this));
            for (let i = 0; i < checkValList.length; i++) {
                if ($(this).val() === checkValList[i]) {
                    $(this).prop('checked', true);
                    break;
                }
            }
        });
    }

    const JJan = function(){
        // alert('짠!');
        // 복사 붙여넣기 동작을 완성하시오.
        // 완성 조건은 제이쿼리 문법으로만!

        let nameVal = getIDValueJQ('inputName_JQ');
        setInputValueJQ('inputName_JN', nameVal);

        let regVal = getIDValueJQ('inputReg_JQ');
        setInputValueJQ('inputReg_JN', regVal);

        let phoneVal = getIDValueJQ('selPhone_JQ');
        setSelectValueJQ('selPhone_JN', phoneVal);

        let rdoVal = getRdoValueJQ('rdoHo_JQ');
        setRdoValJQ('rdoHo_JN', rdoVal);

        let chkVal = getChkValueJQ('chkTech_JQ');
        setChkValJQ('chkTech_JN', chkVal);

        console.log(nameVal);
        console.log(regVal);
        console.log(phoneVal);
        console.log(rdoVal);
        console.log(chkVal);
    }
    // alert('onload 밖');

    window.onload = function () {
        // alert('onload 안');
        // 객체화
        // 1. input에 값 넣기
        // setInputValue('memName', 'name');
        // setInputValue('memRegNum', 'regnum');
        // 2. selectbox 값 선택
        // setSelectValue('memPhone', '011');
        // 3. Radio 값 선택
        // setRdoVal('memRdo', 'E');
        // 4. Checkbox 값 선택
        // setChkVal('memChk', ['C','P']);

        // 1. input 값 넣기 : ID선택자
        // jQuery의 문법은 $로 시작
        // # ID선택자 > 1개
        // . CLASS 선택자 > n개
        // $('#inputName_JQ').val('1');
        // $('#inputReg_JQ').val(1);
        // setInputValueJQ('inputName_JQ', 1);
        // getInputValueJQ('inputName_JQ');

        // .val 로 가져와서 String으로 가져옴.
        // let inputName_JQ = $('#inputName_JQ').val();
        // let inputReg_JQ = $('#inputReg_JQ').val();

        // > ()비우면 get, ()채우면 set
        // console.log( $('#inputName_JQ').val());
        // console.log( $('#inputReg_JQ').val());
    //     console.log(inputName_JQ);
    //     console.log(inputReg_JQ);
    //
    //     if (inputName_JQ == inputReg_JQ) {
    //         alert('같다!');
    //     }
    //     if (inputName_JQ === inputReg_JQ) {
    //         alert('완전같다!');
    //     }

        // 2. selectbox 값 선택 : ID선택자
        // setSelectValueJQ('selPhone_JQ', '012');

        // 3. radiobutton 값 선택 : Name
        // setRdoValJQ('rdoHo_JQ','J');

        // 4. checkbox 값 선택 : Name
        // setChkValJQ('chkTech_JQ', ['C','P']);

        $('#btnJJan').click(function() {
           JJan();
        });
     }

    // var a = 1;
    // var b = '1';
    // var c = true;
    // var d = 0.1;
    //
    // function func1 (a, b) {
    //     alert(this.a);
    //     alert(a);
    // }
    //
    // var func2 = function (a, b) {
    //     return a + b;
    // }
</script>

</body>

</html>
