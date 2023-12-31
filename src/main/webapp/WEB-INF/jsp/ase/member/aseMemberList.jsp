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

<h3>회원 목록</h3>
<br />

<form:form action="/aseMemberList" method="get">
    <div class="form-row align-items-center">
        <div class="col-auto">
            <label class="sr-only" for="memName">이름</label>
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">이름</div>
                </div>
                <input type="text" class="form-control" id="memName" placeholder="이름" name="memName" value="${aseMemberVO.memName}">
            </div>
        </div>
        <div class="col-auto">
            <label class="sr-only" for="memRegNum">주민번호</label>
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">주민번호</div>
                </div>
                <input type="text" class="form-control" id="memRegNum" placeholder="주민번호" name="memRegNum" value="${aseMemberVO.memRegNum}">
            </div>
        </div>
        <div class="col-auto">
            <label class="sr-only" for="memPhone">전화번호</label>
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">전화번호</div>
                </div>
                <select name="memPhone" id="memPhone">
                    <option value="">ALL</option>
                    <option value="010" <c:if test="${chkPhone == '010'}">selected</c:if>>010</option>
                    <option value="011" <c:if test="${chkPhone == '011'}">selected</c:if>>011</option>
                    <option value="012" <c:if test="${chkPhone == '012'}">selected</c:if>>012</option>
                    <option value="013" <c:if test="${chkPhone == '013'}">selected</c:if>>013</option>
                </select>
            </div>
        </div>
        <div class="col-auto">
            <label class="sr-only">라디오</label>
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">라디오</div>
                </div>
                <input type="radio" name="memRdo" id="All" value="" <c:if test="${chkRdo == ''}">checked</c:if>>전체
                <input type="radio" name="memRdo" id="E" value="E" <c:if test="${chkRdo == 'E'}">checked</c:if>>유럽
                <input type="radio" name="memRdo" id="J" value="J" <c:if test="${chkRdo == 'J'}">checked</c:if>>일본
                <input type="radio" name="memRdo" id="A" value="A" <c:if test="${chkRdo == 'A'}">checked</c:if>>동남 아시아
            </div>
        </div>
        <div class="col-auto">
            <label class="sr-only">취미</label>
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">체크</div>
                </div>
                <input type="checkbox" name="memChk" value="C" <c:if test="${fn:contains(saveChk, 'C')}">checked</c:if> >CRUD
                <input type="checkbox" name="memChk" value="Q" <c:if test="${fn:contains(saveChk, 'Q')}">checked</c:if> >Query
                <input type="checkbox" name="memChk" value="F" <c:if test="${fn:contains(saveChk, 'F')}">checked</c:if> >Function
                <input type="checkbox" name="memChk" value="P" <c:if test="${fn:contains(saveChk, 'P')}">checked</c:if> >Procedure
            </div>
        </div>

        <p>

        <div class="col-auto">
            <label class="sr-only" for="memName">이름_JQ</label>
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">이름_JQ</div>
                </div>
                <input type="text" class="form-control" id="inputName_JQ" placeholder="이름_JQ" name="inputName_JQ" value="${aseMemberVO.memName}">
            </div>
        </div>
        <div class="col-auto">
            <label class="sr-only" for="memRegNum">주민번호_JQ</label>
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">주민번호_JQ</div>
                </div>
                <input type="text" class="form-control" id="inputReg_JQ" placeholder="주민번호" name="inputReg_JQ" value="${aseMemberVO.memRegNum}">
            </div>
        </div>
        <div class="col-auto">
            <label class="sr-only" for="selPhone_JQ">전화번호_JQ</label>
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">전화번호_JQ</div>
                </div>
                <select name="selPhone_JQ" id="selPhone_JQ">
                    <option value="">선택하세요</option>
                    <option value="010">010</option>
                    <option value="011">011</option>
                    <option value="012">012</option>
                </select>
            </div>
        </div>
        <div class="col-auto">
            <label class="sr-only">라디오_JQ</label>
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">라디오_JQ</div>
                </div>
                <input type="radio" name="rdoHo_JQ" value="">전체
                <input type="radio" name="rdoHo_JQ" value="E">유럽
                <input type="radio" name="rdoHo_JQ" value="J">일본
            </div>
        </div>
        <div class="col-auto">
            <label class="sr-only">취미_JQ</label>
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">체크_JQ</div>
                </div>
                <input type="checkbox" name="chkTech_JQ" value="C">CRUD
                <input type="checkbox" name="chkTech_JQ" value="Q">Query
                <input type="checkbox" name="chkTech_JQ" value="F">Function
                <input type="checkbox" name="chkTech_JQ" value="P">Procedure
            </div>
        </div>

        <div class="col-auto">
            <button name="action" class="btn btn-info" type="submit">조회</button>
        </div>

        <br>

        <div class="col-auto">
            <label class="sr-only" for="inputName_JJan">이름_JJan</label>
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">이름_JJan</div>
                </div>
                <input type="text" class="form-control" id="inputName_JJan" placeholder="이름" name="inputName_JJan">
            </div>
        </div>
        <div class="col-auto">
            <label class="sr-only" for="inputReg_JJan">주민번호_JJan</label>
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">주민번호_JJan</div>
                </div>
                <input type="text" class="form-control" id="inputReg_JJan" placeholder="주민번호" name="inputReg_JJan">
            </div>
        </div>
        <div class="col-auto">
            <label class="sr-only" for="selPhone_JJan">전화번호_JJan</label>
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">전화번호_JJan</div>
                </div>
                <select name="selPhone_JJan" id="selPhone_JJan">
                    <option value="">선택하세요</option>
                    <option value="010">010</option>
                    <option value="011">011</option>
                    <option value="012">012</option>
                </select>
            </div>
        </div>
        <div class="col-auto">
            <label class="sr-only">라디오_JJan</label>
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">라디오_JJan</div>
                </div>
                <input type="radio" name="rdoHo_JJan" value="">전체
                <input type="radio" name="rdoHo_JJan" value="E">유럽
                <input type="radio" name="rdoHo_JJan" value="J">일본
            </div>
        </div>
        <div class="col-auto">
            <label class="sr-only">체크_JJan</label>
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">체크_JJan</div>
                </div>
                <input type="checkbox" name="chkTech_JJan" value="C">CRUD
                <input type="checkbox" name="chkTech_JJan" value="Q">Query
                <input type="checkbox" name="chkTech_JJan" value="F">Function
                <input type="checkbox" name="chkTech_JJan" value="P">Procedure
            </div>
        </div>

    </div>
</form:form>

    <button id="btnJJan" class="btn btn-info">짠</button>

<br /><br />
    <table class="table table-striped">
        <thead>
        <tr>
            <th scope="col">#</th>
            <th scope="col">이름</th>
            <th scope="col">전화번호</th>
            <th scope="col">주민번호</th>
            <th scope="col">취미</th>
            <th scope="col">선택</th>
            <th scope="col">설명</th>
            <th scope="col">등록일자</th>
            <th scope="col">승인여부</th>
        </tr>
        </thead>
        <tbody>
            <c:forEach var="list" items="${aseMemberList}" varStatus="status">
                <tr>
                    <td scope="row"><c:out value="${status.count}" /></td>
                    <%--<td>${fn:replace(list.memName, fn:substring(list.memName, 1, 2), '*')}</td>--%>
                    <td>${list.memName}</td>
                    <td>${list.memPhone}</td>
                    <td>${list.memRegNum}</td>
                    <td>${list.memChk}</td>
                    <td>${list.memRdo}</td>
                    <td>${list.memDesc}</td>
                    <td>${list.createDt}</td>
                    <td>
                        <c:if test="${list.confDate eq null}">
                            <button type="button" name="action" value="check" class="btn btn-info" onclick="location.href='/aseMemberForm?memUid=${list.memUid}'">승인</button>
                        </c:if>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>

<script>
    var setInputValue = function (inputID, inputVal){
        document.getElementById(inputID).value = inputVal;
    }

    function setSelectValue(selectID, selectVal) {
        var memPhoneObj = document.getElementById(selectID);

        for (var i = 0; i < memPhoneObj.options.length; i++){
            var phoneOne = memPhoneObj.options[i];
            if(phoneOne.value === selectVal){
                phoneOne.selected = true;
            }
        }
    }

    function setRadioValue(rdoID, rdoVal){
        var memRdoObj = document.getElementsByName(rdoID);

        for(var i=0; i < memRdoObj.length; i++) {
            if(memRdoObj[i].value == rdoVal){
                memRdoObj[i].checked = true;
            }
        }
    }

    function setCheckValues(checkName, checkValList){
        var checkObj = document.getElementsByName(checkName);

        for(var i=0; i < checkObj.length; i++) {
            var memChkOne = checkObj[i];

            for (var j = 0; j < checkValList.length; j++) {
                var valOne = checkValList[j];

                if(memChkOne.value === valOne){
                    memChkOne.checked = true;
                    break;
                }
            }
        }
    }

    const setInputValueJQ = function(nameID, nameVal){
        $('#'+ nameID).val(nameVal);
    }

    const getInputValueJQ = function(nameID){
        return $('#'+ nameID).val();
    }

    const setSelectValueJQ = function (selectID, selectVal){
        $('#'+ selectID + ' option').each(function (){
           if( $(this).val() === selectVal ){
               $(this).prop('selected', true);
               return false;
           }
        });

    }



    const setRadioValueJQ = function (radioName, radioVal){
        $('input[name=' + radioName + ']').each(function (){
            if( $(this).val() === radioVal ){
                $(this).prop('checked', true);
                return false;
            }
        });
    }

    const getRadioValueJQ = function(radioName){
        return $('input[name='+radioName+']:checked').val();
    }

    const setCheckValuesJQ = function( checkName, checkValList ){
        $('input[name=' + checkName + ']').prop('checked', false);

        $('input[name=' + checkName + ']').each(function (){
            for (let i = 0; i < checkValList.length; i++) {
                if($(this).val() === checkValList[i]){
                    $(this).prop('checked', true);
                    break;
                }
            }
        });
    }

    const getCheckValuesJQ = function( checkName ){
        let chkValues = [];
        $('input:checkbox[name='+checkName+']').each(function (){
            if($(this).is(":checked") === true){
                let chkTechVal = $(this).val();
                chkValues.push(chkTechVal);
            }
        })
        return chkValues;
    }

    const JJan = function(){

/*        //데이터 비우기
        setInputValueJQ('inputName_JJan', '');
        setInputValueJQ('inputReg_JJan', '');
        setSelectValueJQ('selPhone_JJan', '');
        $('input[name=rdoHo_JJan]').prop("checked", false);
        $('input:checkbox[name=chkTech_JJan]').prop("checked", false);*/

        //윗줄 데이터 복사 버튼 동작
        //1. input 값 넣기
        setInputValueJQ('inputName_JJan', getInputValueJQ('inputName_JQ'));
        setInputValueJQ('inputReg_JJan', getInputValueJQ('inputReg_JQ'));

        //2. selectBox 값 넣기
        setSelectValueJQ('selPhone_JJan', getInputValueJQ('selPhone_JQ'));

        //3. radio 값 선택
        setRadioValueJQ('rdoHo_JJan', getRadioValueJQ('rdoHo_JQ'));

        //4.check 값 선택
        setCheckValuesJQ('chkTech_JJan' , getCheckValuesJQ('chkTech_JQ'));
    }



    window.onload = function (){

        //1. input 값 넣기
        setInputValue('memName', '1');
        setInputValue('memRegNum', '030714');

        //2. 셀렉트박스 값 선택
        setSelectValue('memPhone', '012');

        //3. 라디오 값 선택
        setRadioValue('memRdo', 'J');

        //4. 체크박스 값 선택 (다중)
        setCheckValues('memChk', ['C','P']);

        //jQuery는 $로 시작
        //1. input 값 넣기
        setInputValueJQ('inputName_JQ', '1234');
        setInputValueJQ('inputReg_JQ', '123456678');

        //2.select 값 선택
        setSelectValueJQ('selPhone_JQ', '010');

        //3.radio 값 선택
        setRadioValueJQ('rdoHo_JQ', 'J');

        //4.check 값 선택
        setCheckValuesJQ('chkTech_JQ', '[C,Q]')

        $('#btnJJan').click(function (){
            //이 버튼을 누르면 두번째줄에 입력된 값이 아래 (세번째)검색조건으로 복사됨
            //JQuery 문법으로만 작성
            JJan();
        });
    }


</script>

</body>

</html>
