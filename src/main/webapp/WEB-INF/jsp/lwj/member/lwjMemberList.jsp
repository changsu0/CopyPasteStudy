<%--
  Created by IntelliJ IDEA.
  User: leewoojin
  Date: 2023. 11. 21.
  Time: 오후 02:35
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

<h3>회원가입 리스트</h3>
<br />


<form:form action="/lwjMemberList" method="get">
    <div class="form-row align-items-center">
        <div class="col-auto">
            <label class="sr-only" for="memName">이름</label>
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">이름</div>
                </div>
                <input type="text" class="form-control" id="memName" placeholder="이름" name="memName" size="10" maxlength="3" value="${lwjMemberVO.memName}">
            </div>
        </div>
        <div class="col-auto">
            <label class="sr-only" for="memRegNum">주민번호</label>
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">주민번호</div>
                </div>
                <input type="text" class="form-control" id="memRegNum" placeholder="주민번호" name="memRegNum" size="10" maxlength="6" value="${lwjMemberVO.memRegNum}">
            </div>
        </div>
        <div class="col-auto">
            <label class="sr-only" for="memPhone">전화번호</label>
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">전화번호</div>
                </div>
                <input type="text" class="form-control" id="memPhone" placeholder="전화번호" name="memPhone" size="10" maxlength="11" value="${lwjMemberVO.memPhone}">
            </div>
        </div>
        <div class="col-auto">
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">전화번호</div>
                </div>
                <select name="memPhone1" id="lwjselect">
                    <option value="010" <c:if test="${selectNum == '010'}">selected="selected"</c:if>>010</option>
                    <option value="011" <c:if test="${selectNum == '011'}">selected="selected"</c:if>>011</option>
                    <option value="012" <c:if test="${selectNum == '012'}">selected="selected"</c:if>>012</option>
                    <option value="013" <c:if test="${selectNum == '013'}">selected="selected"</c:if>>013</option>
                </select>
            </div>
        </div>
        <div class="col-auto">
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">라디오</div>
                </div>
                <div class="form-control">
                    <input type="radio" name="memRdo" value="J" <c:if test="${rdo == 'J'}">checked="checked"</c:if>> 일본
                    <input type="radio" name="memRdo" value="S" <c:if test="${rdo == 'S'}">checked="checked"</c:if>> 동남아
                    <input type="radio" name="memRdo" value="E" <c:if test="${rdo == 'E'}">checked="checked"</c:if>> 유럽
                </div>
            </div>
        </div>
        <div class="col-auto">
            <label class="sr-only">취미</label>
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">체크</div>
                </div>
                <div class="form-control">
                    <input type="checkbox" name="memChk" value="C">CRUD
                    <input type="checkbox" name="memChk" value="Q">Query
                    <input type="checkbox" name="memChk" value="F">Function
                    <input type="checkbox" name="memChk" value="P">Procedure
                </div>
            </div>
        </div>
        <div class="col-auto">
            <label class="sr-only" for="memName">이름_JQ</label>
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">이름_JQ</div>
                </div>
                <input type="text" class="form-control" id="inputName_JQ" placeholder="이름" name="inputName_JQ" size="3" maxlength="3" value="${lwjMemberVO.memName}">
            </div>
        </div>
        <div class="col-auto">
            <label class="sr-only" for="memRegNum">주민번호_JQ</label>
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">주민번호_JQ</div>
                </div>
                <input type="text" class="form-control" id="inputReq_JQ" placeholder="주민번호" name="inputReq_JQ" size="5" maxlength="6" value="${lwjMemberVO.memRegNum}">
            </div>
        </div>
        <div class="col-auto">
            <label class="sr-only" for="memPhone">전화번호_JQ</label>
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">전화번호_JQ</div>
                </div>
                <input type="text" class="form-control" id="inputPhone_JQ" placeholder="전화번호" name="inputPhone_JQ" size=9 maxlength="11" value="${lwjMemberVO.memPhone}">
            </div>
        </div>
        <div class="col-auto">
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">전화번호_JQ</div>
                </div>
                <select id="selPhone_JQ" name="selPhone_JQ">
                    <option value="010">010</option>
                    <option value="011">011</option>
                    <option value="012">012</option>
                    <option value="013">013</option>
                </select>
            </div>
        </div>
        <div class="col-auto">
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">라디오_JQ</div>
                </div>
                <div class="form-control">
                    <input type="radio" name="rdoHo_JQ" value="J"> 일본
                    <input type="radio" name="rdoHo_JQ" value="S"> 동남아
                    <input type="radio" name="rdoHo_JQ" value="E"> 유럽
                </div>
            </div>
        </div>
        <div class="col-auto">
            <label class="sr-only">취미_JQ</label>
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">체크_JQ</div>
                </div>
                <div class="form-control">
                    <input type="checkbox" name="chkTech_JQ" value="C">CRUD
                    <input type="checkbox" name="chkTech_JQ" value="Q">Query
                    <input type="checkbox" name="chkTech_JQ" value="F">Function
                    <input type="checkbox" name="chkTech_JQ" value="P">Procedure
                </div>
            </div>
        </div>
        <div class="col-auto">
            <label class="sr-only" for="memName">이름_H</label>
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">이름_H</div>
                </div>
                <input type="text" class="form-control" id="inputName_HW" placeholder="이름" name="inputName_HW" size="2" maxlength="3" value="${lwjMemberVO.memName}">
            </div>
        </div>
        <div class="col-auto">
            <label class="sr-only" for="memRegNum">주민번호_H</label>
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">주민번호_H</div>
                </div>
                <input type="text" class="form-control" id="inputReq_HW" placeholder="주민번호" name="inputReq_HW" size="4" maxlength="6" value="${lwjMemberVO.memRegNum}">
            </div>
        </div>
        <div class="col-auto">
            <label class="sr-only" for="memPhone">전화번호_H</label>
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">전화번호_H</div>
                </div>
                <input type="text" class="form-control" id="inputPhone_HW" placeholder="전화번호" name="inputPhone_HW" size="9" maxlength="11" value="${lwjMemberVO.memPhone}">
            </div>
        </div>
        <div class="col-auto">
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">전화번호_H</div>
                </div>
                <select id="selPhone_HW" name="selPhone_HW">
                    <option value="010">010</option>
                    <option value="011">011</option>
                    <option value="012">012</option>
                    <option value="013">013</option>
                </select>
            </div>
        </div>
        <div class="col-auto">
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">라디오_H</div>
                </div>
                <div class="form-control">
                    <input type="radio" name="rdoHo_HW" value="J"> 일본
                    <input type="radio" name="rdoHo_HW" value="S"> 동남아
                    <input type="radio" name="rdoHo_HW" value="E"> 유럽
                </div>
            </div>
        </div>
        <div class="col-auto">
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">체크_H</div>
                </div>
                <div class="form-control">
                    <input type="checkbox" name="chkTech_HW" value="C">CRUD
                    <input type="checkbox" name="chkTech_HW" value="Q">Query
                    <input type="checkbox" name="chkTech_HW" value="F">Function
                    <input type="checkbox" name="chkTech_HW" value="P">Procedure
                </div>
            </div>
        </div>
        <div class="col-auto">
            <button name="action" class="btn btn-info" type="submit">조회</button>
        </div>
    </div>
</form:form>
<button class="btn btn-info" id="btnJJang">쨘!!</button>
<br /><br />
    <table class="table table-striped">
        <thead>
        <tr>
            <th scope="col">No</th>
            <th scope="col">이름</th>
            <th scope="col">전화번호</th>
            <th scope="col">주민번호</th>
            <th scope="col">취미</th>
            <th scope="col">골라</th>
            <th scope="col">설명</th>
            <th scope="col">신청 시간</th>
            <th scope="col">승인 시간</th>
            <th scope="col">승인여부</th>
        </tr>
        </thead>
        <tbody>
            <c:forEach var="list" items="${lwjMemberList}" varStatus="status">
                <tr>
                    <td scope="row"><c:out value="${status.count}" /></td>
                    <td>${list.memName}</td>
                    <td>${list.memPhone}</td>
                    <td>${list.memRegNum}</td>
                    <td>${list.memChk}</td>
                    <td>${list.memRdo}</td>
                    <td>${list.memDesc}</td>
                    <td>${list.memCreate}</td>
                    <td>${list.memAllow}</td>
                    <c:if test="${list.memAllow == null}">
                        <td><input type="button" class="btn btn-info" value="승인" onClick="location.href='/lwjMemberForm?memUid=${list.memUid}'"></td>
                    </c:if>
                    <c:if test="${list.memAllow == null}">
                        <td></td>
                    </c:if>
                </tr>
            </c:forEach>
        </tbody>
    </table>
<script>
    //JavaScript
    //1. 불필요한 소스 제거
    //2. 반복되는 패턴 찾기
    //3. 동적인 부분 찾기
    var setInputValue = function(inputID, inputVal) {
        //고정&동적 부분 구분해야함
        document.getElementById(inputID).value = inputVal;
    }

    function setSelectVal(selectID, selectVal) {
        var lwjselect = document.getElementById(selectID);

        for (var i = 0; i < lwjselect.options.length; i++) {
            var lwjOne = lwjselect.options[i];
            if (lwjOne.value === selectVal) {
                lwjOne.selected = true;
            }
        }
    }

    var setRadioVal = function(radioID, radioVal) {
        var memRdo = document.getElementsByName(radioID);

        for (var i = 0; i < memRdo.length; i++) {
            var memRdoOne = memRdo[i];
            if(memRdoOne.value === radioVal) {
                memRdoOne.checked = true;
            }
        }
    }

    function setCheckValues(chkName, chkValList) {
        var memChk = document.getElementsByName(chkName);

        for (var i = 0; i < memChk.length; i++) {
            var memChkOne = memChk[i];

            for (var j = 0; j < chkValList.length; j++) {
                var valOne = chkValList[j];

                if(memChkOne.value === valOne) {
                    memChkOne.checked = true;
                    break;
                }
            }
        }
    }

    //jQuery
    const setInputValueJQ = function (inputID, inputVal) {
        $('#' + inputID).val(inputVal);
    }

    const getInputValueJQ = function(inputID) {
        return $('#' + inputID).val();
    }

    const setSelectValueJQ = function (selectID, selectVal) {
        $('#' + selectID + ' option').each(function () { //option 한 칸 띄워야함(문법)(하위객체 찾기)
            if($(this).val() === selectVal) {
                $(this).prop('selected', true);
                return false;
            }
        });
    }

    const getSelectValueJQ = function (selectID) {
        return $('#' + selectID).val();
    }


    const setRadioValueJQ = function (radioName, radioVal) {
        //단일선택, 선택지 여러개, Name으로 그룹핑
        $('input[name=' + radioName + ']').each(function () {
            if($(this).val() === radioVal) {
                $(this).prop('checked', true);
                return false;
            }
        });
    }


    const getRadioValueJQ = function (radioName) {
        return $("input[name='rdoHo_JQ']:checked").prop('checked', true).val();
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


    const getCheckValuesJQ = function (chkName) {
        var chk_arr = [];
        $("input[name='chkTech_JQ']:checked").each(function() {
            chk_arr.push($(this).val());
        });
        return chk_arr;
    }


    const JJan = function () {
        //동작 완성하기
        //완성 조건은 제이쿼리 문법으로만!
        setInputValueJQ('inputName_HW', getInputValueJQ('inputName_JQ')); //이름_JQ 받기
        setInputValueJQ('inputReq_HW', getInputValueJQ('inputReq_JQ')); //전화번호_JQ 받기
        setInputValueJQ('inputPhone_HW', getInputValueJQ('inputPhone_JQ')); //주민번호_JQ 받기
        setSelectValueJQ('selPhone_HW', getSelectValueJQ('selPhone_JQ')); //전화번호 select박스 값 받기
        setRadioValueJQ('rdoHo_HW', getRadioValueJQ('rdoHo_JQ')); //라디오버튼 값 받기
        setCheckValuesJQ('chkTech_HW', getCheckValuesJQ('chkTech_JQ')); //체크박스 값 받기
    }


    //화면 그리기 전!
    // alert('onload 밖')
    window.onload = function () {
        // 1. Input에 값넣기
        setInputValue('memName', '이름'); //이름 적는 칸
        setInputValue('memRegNum', '주민'); //주민번호 적는 칸
        // 2. SelectBox 값 선택
        setSelectVal('lwjselect', '011');
        // 3. Radio 값 선택
        setRadioVal('memRdo', 'J');
        // 4. CheckBox
        setCheckValues('memChk', ['C','P']);


        // 1. Input 값 넣기
        setInputValueJQ('inputName_JQ', 122);
        setInputValueJQ('inputReq_JQ', 111111);
        setInputValueJQ('inputPhone_JQ', 1245);
        // 2. SelectBox 값 선택
        setSelectValueJQ('selPhone_JQ', '011');
        // 3. Radio 값 선택
        setRadioValueJQ('rdoHo_JQ', 'E');
        // 4. CheckBox
        setCheckValuesJQ('chkTech_JQ', ['C','P']);

        $('#btnJJang').click(function () {
           JJan();
        });
    }

</script>
</body>
</html>
