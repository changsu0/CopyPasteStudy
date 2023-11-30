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

<h3>이우진동무 Javascript</h3>
<br />

<form:form action="/selectKcsMemList" method="get">
    <div class="form-row align-items-center">
        <div class="col-auto">
            <label class="sr-only" for="title">이름</label>
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">이름</div>
                </div>
                <input type="text" class="form-control" id="lwjMic" placeholder="TITLE" name="title" value="${aseStudyVO.title}">
            </div>
        </div>
        <div class="col-auto">
            <label class="sr-only" for="comment1">주민번호</label>
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">주민번호</div>
                </div>
                <input type="text" class="form-control" id="comment1" placeholder="COMMENT" name="comment1" value="${aseStudyVO.comment1}">
            </div>
        </div>
        <div class="col-auto">
            <label class="sr-only" for="comment1">전화번호</label>
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">전화번호</div>
                </div>
                <select name="memPhone3" id="aseQueryJJang">
                    <option value="010" <c:if test="${lwj eq '010'}">selected="selected"</c:if>>010</option>

                    <c:if test="${lwj eq '011'}">
                        <option value="011" selected="selected">011</option>
                    </c:if>
                    <c:if test="${lwj ne '011'}">
                        <option value="011">011</option>
                    </c:if>
                    <option value="012" <c:if test="${lwj eq '012'}">selected="selected"</c:if>>012</option>
                </select>
            </div>
        </div>
        <div class="col-auto">
            <label class="sr-only" for="comment1">라디오</label>
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">라디오</div>
                </div>
                <input type="radio" name="memRdo" value="E" <c:if test="${rdo eq 'E'}">checked</c:if>> 유럽
                <input type="radio" name="memRdo" value="J" <c:if test="${rdo eq 'J'}">checked</c:if>> 일본
            </div>
        </div>
        <div class="col-auto">
            <label class="sr-only">취미</label>
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">체크</div>
                </div>
                <input type="checkbox" name="memChk" value="C" >CRUD
                <input type="checkbox" name="memChk" value="Q" >Query
                <input type="checkbox" name="memChk" value="F" >Function
                <input type="checkbox" name="memChk" value="P" >Procedure
            </div>
        </div>
        <div class="col-auto">
            <label class="sr-only" for="title">이름</label>
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">이름</div>
                </div>
                <input type="text" class="form-control" id="lwjMic" placeholder="TITLE" name="title" value="${aseStudyVO.title}">
            </div>
        </div>
        <div class="col-auto">
            <label class="sr-only" for="comment1">주민번호</label>
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">주민번호</div>
                </div>
                <input type="text" class="form-control" id="comment1" placeholder="COMMENT" name="comment1" value="${aseStudyVO.comment1}">
            </div>
        </div>
        <div class="col-auto">
            <label class="sr-only" for="comment1">전화번호</label>
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">전화번호</div>
                </div>
                <select name="memPhone3" id="aseQueryJJang">
                    <option value="010" <c:if test="${lwj eq '010'}">selected="selected"</c:if>>010</option>

                    <c:if test="${lwj eq '011'}">
                        <option value="011" selected="selected">011</option>
                    </c:if>
                    <c:if test="${lwj ne '011'}">
                        <option value="011">011</option>
                    </c:if>
                    <option value="012" <c:if test="${lwj eq '012'}">selected="selected"</c:if>>012</option>
                </select>
            </div>
        </div>
        <div class="col-auto">
            <label class="sr-only" for="comment1">라디오</label>
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">라디오</div>
                </div>
                <input type="radio" name="memRdo" value="E" <c:if test="${rdo eq 'E'}">checked</c:if>> 유럽
                <input type="radio" name="memRdo" value="J" <c:if test="${rdo eq 'J'}">checked</c:if>> 일본
            </div>
        </div>
        <div class="col-auto">
            <label class="sr-only">취미</label>
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">체크</div>
                </div>
                <input type="checkbox" name="memChk" value="C" >CRUD
                <input type="checkbox" name="memChk" value="Q" >Query
                <input type="checkbox" name="memChk" value="F" >Function
                <input type="checkbox" name="memChk" value="P" >Procedure
            </div>
        </div>
        <div class="col-auto">
            <label class="sr-only" for="title">이름</label>
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">이름</div>
                </div>
                <input type="text" class="form-control" id="lwjMic" placeholder="TITLE" name="title" value="${aseStudyVO.title}">
            </div>
        </div>
        <div class="col-auto">
            <label class="sr-only" for="comment1">주민번호</label>
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">주민번호</div>
                </div>
                <input type="text" class="form-control" id="comment1" placeholder="COMMENT" name="comment1" value="${aseStudyVO.comment1}">
            </div>
        </div>
        <div class="col-auto">
            <label class="sr-only" for="comment1">전화번호</label>
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">전화번호</div>
                </div>
                <select name="memPhone3" id="aseQueryJJang">
                    <option value="010" <c:if test="${lwj eq '010'}">selected="selected"</c:if>>010</option>

                    <c:if test="${lwj eq '011'}">
                        <option value="011" selected="selected">011</option>
                    </c:if>
                    <c:if test="${lwj ne '011'}">
                        <option value="011">011</option>
                    </c:if>
                    <option value="012" <c:if test="${lwj eq '012'}">selected="selected"</c:if>>012</option>
                </select>
            </div>
        </div>
        <div class="col-auto">
            <label class="sr-only" for="comment1">라디오</label>
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">라디오</div>
                </div>
                <input type="radio" name="memRdo" value="E" <c:if test="${rdo eq 'E'}">checked</c:if>> 유럽
                <input type="radio" name="memRdo" value="J" <c:if test="${rdo eq 'J'}">checked</c:if>> 일본
            </div>
        </div>
        <div class="col-auto">
            <label class="sr-only">취미</label>
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">체크</div>
                </div>
                <input type="checkbox" name="memChk" value="C" >CRUD
                <input type="checkbox" name="memChk" value="Q" >Query
                <input type="checkbox" name="memChk" value="F" >Function
                <input type="checkbox" name="memChk" value="P" >Procedure
            </div>
        </div>
        <div class="col-auto">
            <label class="sr-only" for="title">이름</label>
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">이름</div>
                </div>
                <input type="text" class="form-control" id="lwjMic" placeholder="TITLE" name="title" value="${aseStudyVO.title}">
            </div>
        </div>
        <div class="col-auto">
            <label class="sr-only" for="comment1">주민번호</label>
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">주민번호</div>
                </div>
                <input type="text" class="form-control" id="comment1" placeholder="COMMENT" name="comment1" value="${aseStudyVO.comment1}">
            </div>
        </div>
        <div class="col-auto">
            <label class="sr-only" for="comment1">전화번호</label>
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">전화번호</div>
                </div>
                <select name="memPhone3" id="aseQueryJJang">
                    <option value="010" <c:if test="${lwj eq '010'}">selected="selected"</c:if>>010</option>

                    <c:if test="${lwj eq '011'}">
                        <option value="011" selected="selected">011</option>
                    </c:if>
                    <c:if test="${lwj ne '011'}">
                        <option value="011">011</option>
                    </c:if>
                    <option value="012" <c:if test="${lwj eq '012'}">selected="selected"</c:if>>012</option>
                </select>
            </div>
        </div>
        <div class="col-auto">
            <label class="sr-only" for="comment1">라디오</label>
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">라디오</div>
                </div>
                <input type="radio" name="memRdo" value="E" <c:if test="${rdo eq 'E'}">checked</c:if>> 유럽
                <input type="radio" name="memRdo" value="J" <c:if test="${rdo eq 'J'}">checked</c:if>> 일본
            </div>
        </div>
        <div class="col-auto">
            <label class="sr-only">취미</label>
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">체크</div>
                </div>
                <input type="checkbox" name="memChk" value="C" >CRUD
                <input type="checkbox" name="memChk" value="Q" >Query
                <input type="checkbox" name="memChk" value="F" >Function
                <input type="checkbox" name="memChk" value="P" >Procedure
            </div>
        </div>
        <div class="col-auto">
            <label class="sr-only" for="title">이름</label>
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">이름</div>
                </div>
                <input type="text" class="form-control" id="lwjMic" placeholder="TITLE" name="title" value="${aseStudyVO.title}">
            </div>
        </div>
        <div class="col-auto">
            <label class="sr-only" for="comment1">주민번호</label>
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">주민번호</div>
                </div>
                <input type="text" class="form-control" id="comment1" placeholder="COMMENT" name="comment1" value="${aseStudyVO.comment1}">
            </div>
        </div>
        <div class="col-auto">
            <label class="sr-only" for="comment1">전화번호</label>
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">전화번호</div>
                </div>
                <select name="memPhone3" id="aseQueryJJang">
                    <option value="010" <c:if test="${lwj eq '010'}">selected="selected"</c:if>>010</option>

                    <c:if test="${lwj eq '011'}">
                        <option value="011" selected="selected">011</option>
                    </c:if>
                    <c:if test="${lwj ne '011'}">
                        <option value="011">011</option>
                    </c:if>
                    <option value="012" <c:if test="${lwj eq '012'}">selected="selected"</c:if>>012</option>
                </select>
            </div>
        </div>
        <div class="col-auto">
            <label class="sr-only" for="comment1">라디오</label>
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">라디오</div>
                </div>
                <input type="radio" name="memRdo" value="E" <c:if test="${rdo eq 'E'}">checked</c:if>> 유럽
                <input type="radio" name="memRdo" value="J" <c:if test="${rdo eq 'J'}">checked</c:if>> 일본
            </div>
        </div>
        <div class="col-auto">
            <label class="sr-only">취미</label>
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">체크</div>
                </div>
                <input type="checkbox" name="memChk" value="C" >CRUD
                <input type="checkbox" name="memChk" value="Q" >Query
                <input type="checkbox" name="memChk" value="F" >Function
                <input type="checkbox" name="memChk" value="P" >Procedure
            </div>
        </div>
        <div class="col-auto">
            <label class="sr-only" for="title">이름</label>
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">이름</div>
                </div>
                <input type="text" class="form-control" id="lwjMic" placeholder="TITLE" name="title" value="${aseStudyVO.title}">
            </div>
        </div>
        <div class="col-auto">
            <label class="sr-only" for="comment1">주민번호</label>
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">주민번호</div>
                </div>
                <input type="text" class="form-control" id="comment1" placeholder="COMMENT" name="comment1" value="${aseStudyVO.comment1}">
            </div>
        </div>
        <div class="col-auto">
            <label class="sr-only" for="comment1">전화번호</label>
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">전화번호</div>
                </div>
                <select name="memPhone3" id="aseQueryJJang">
                    <option value="010" <c:if test="${lwj eq '010'}">selected="selected"</c:if>>010</option>

                    <c:if test="${lwj eq '011'}">
                        <option value="011" selected="selected">011</option>
                    </c:if>
                    <c:if test="${lwj ne '011'}">
                        <option value="011">011</option>
                    </c:if>
                    <option value="012" <c:if test="${lwj eq '012'}">selected="selected"</c:if>>012</option>
                </select>
            </div>
        </div>
        <div class="col-auto">
            <label class="sr-only" for="comment1">라디오</label>
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">라디오</div>
                </div>
                <input type="radio" name="memRdo" value="E" <c:if test="${rdo eq 'E'}">checked</c:if>> 유럽
                <input type="radio" name="memRdo" value="J" <c:if test="${rdo eq 'J'}">checked</c:if>> 일본
            </div>
        </div>
        <div class="col-auto">
            <label class="sr-only">취미</label>
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">체크</div>
                </div>
                <input type="checkbox" name="memChk" value="C" >CRUD
                <input type="checkbox" name="memChk" value="Q" >Query
                <input type="checkbox" name="memChk" value="F" >Function
                <input type="checkbox" name="memChk" value="P" >Procedure
            </div>
        </div>
        <div class="col-auto">
            <label class="sr-only" for="title">이름</label>
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">이름</div>
                </div>
                <input type="text" class="form-control" id="lwjMic" placeholder="TITLE" name="title" value="${aseStudyVO.title}">
            </div>
        </div>
        <div class="col-auto">
            <label class="sr-only" for="comment1">주민번호</label>
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">주민번호</div>
                </div>
                <input type="text" class="form-control" id="comment1" placeholder="COMMENT" name="comment1" value="${aseStudyVO.comment1}">
            </div>
        </div>
        <div class="col-auto">
            <label class="sr-only" for="comment1">전화번호</label>
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">전화번호</div>
                </div>
                <select name="memPhone3" id="aseQueryJJang">
                    <option value="010" <c:if test="${lwj eq '010'}">selected="selected"</c:if>>010</option>

                    <c:if test="${lwj eq '011'}">
                        <option value="011" selected="selected">011</option>
                    </c:if>
                    <c:if test="${lwj ne '011'}">
                        <option value="011">011</option>
                    </c:if>
                    <option value="012" <c:if test="${lwj eq '012'}">selected="selected"</c:if>>012</option>
                </select>
            </div>
        </div>
        <div class="col-auto">
            <label class="sr-only" for="comment1">라디오</label>
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">라디오</div>
                </div>
                <input type="radio" name="memRdo" value="E" <c:if test="${rdo eq 'E'}">checked</c:if>> 유럽
                <input type="radio" name="memRdo" value="J" <c:if test="${rdo eq 'J'}">checked</c:if>> 일본
            </div>
        </div>
        <div class="col-auto">
            <label class="sr-only">취미</label>
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">체크</div>
                </div>
                <input type="checkbox" name="memChk" value="C" >CRUD
                <input type="checkbox" name="memChk" value="Q" >Query
                <input type="checkbox" name="memChk" value="F" >Function
                <input type="checkbox" name="memChk" value="P" >Procedure
            </div>
        </div>
        <div class="col-auto">
            <label class="sr-only" for="title">이름</label>
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">이름</div>
                </div>
                <input type="text" class="form-control" id="lwjMic" placeholder="TITLE" name="title" value="${aseStudyVO.title}">
            </div>
        </div>
        <div class="col-auto">
            <label class="sr-only" for="comment1">주민번호</label>
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">주민번호</div>
                </div>
                <input type="text" class="form-control" id="comment1" placeholder="COMMENT" name="comment1" value="${aseStudyVO.comment1}">
            </div>
        </div>
        <div class="col-auto">
            <label class="sr-only" for="comment1">전화번호</label>
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">전화번호</div>
                </div>
                <select name="memPhone3" id="aseQueryJJang">
                    <option value="010" <c:if test="${lwj eq '010'}">selected="selected"</c:if>>010</option>

                    <c:if test="${lwj eq '011'}">
                        <option value="011" selected="selected">011</option>
                    </c:if>
                    <c:if test="${lwj ne '011'}">
                        <option value="011">011</option>
                    </c:if>
                    <option value="012" <c:if test="${lwj eq '012'}">selected="selected"</c:if>>012</option>
                </select>
            </div>
        </div>
        <div class="col-auto">
            <label class="sr-only" for="comment1">라디오</label>
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">라디오</div>
                </div>
                <input type="radio" name="memRdo" value="E" <c:if test="${rdo eq 'E'}">checked</c:if>> 유럽
                <input type="radio" name="memRdo" value="J" <c:if test="${rdo eq 'J'}">checked</c:if>> 일본
            </div>
        </div>
        <div class="col-auto">
            <label class="sr-only">취미</label>
            <div class="input-group mb-2">
                <div class="input-group-prepend">
                    <div class="input-group-text">체크</div>
                </div>
                <input type="checkbox" name="memChk" value="C" >CRUD
                <input type="checkbox" name="memChk" value="Q" >Query
                <input type="checkbox" name="memChk" value="F" >Function
                <input type="checkbox" name="memChk" value="P" >Procedure
            </div>
        </div>
        <div class="col-auto">
            <button name="action" class="btn btn-info" type="submit">조회</button>
        </div>
    </div>
</form:form>
<br /><br />
    <table class="table table-striped">
        <thead>
        <tr>
            <th scope="col">이름</th>
            <th scope="col">전번</th>
            <th scope="col">주민</th>
            <th scope="col">취미</th>
            <th scope="col">골라</th>
            <th scope="col">설명</th>
            <th scope="col">승인여부</th>
        </tr>
        </thead>
        <tbody>
            <c:forEach var="list" items="${memList}" varStatus="status">
                <tr>
                    <td>${list.memName}</td>
                    <td>${list.memPhone}</td>
                    <td>${list.memRegNum}</td>
                    <td>${list.memChk}</td>
                    <td>${list.memRdo}</td>
                    <td>${list.memDesc}</td>
                    <td>
                        <c:if test="${list.aprvMemUid == null}">
                            <a href="<c:url value='/kcsMemForm?memUid=${list.memUid}' />">승인</a>
                        </c:if>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>


<script>
    var setInputValue = function (inputID, inputVal) {
        document.getElementById( inputID ).value = inputVal;
    }

    function setSelectValue( selectID, selectVal ) {
        var aseQueryJJang = document.getElementById( selectID );
        for (var i = 0; i < aseQueryJJang.options.length; i++) {
            var aseOne = aseQueryJJang.options[i];
            if (aseOne.value === selectVal)
                aseOne.selected = true;
        }
    }

    var setRadioValue = function (radioName, radioVal) {
        var memRdo = document.getElementsByName( radioName );
        for (var i = 0; i < memRdo.length; i++) {
            var memRdoOne = memRdo[i];
            if (memRdoOne.value === radioVal)
                memRdoOne.checked = true;
        }
    }

    function setCheckValues( checkName, checkValList ) {
        var memChk = document.getElementsByName( checkName );
        for (var i = 0; i < memChk.length; i++) {
            var memChkOne = memChk[i];

            for (var j = 0; j < checkValList.length; j++) {
                var valOne = checkValList[j];

                if (memChkOne.value === valOne){
                    memChkOne.checked = true;
                    break;
                }
            }
        }
    }

    window.onload = function (){
        // 1. Input에 값넣기
        setInputValue('lwjMic', '그만떠들어');
        setInputValue('comment1', '아무말');
        // 2. SelectBox 값 선택
        setSelectValue('aseQueryJJang', '010');
        // 3. Radio 값 선택
        setRadioValue('memRdo', 'J');
        // 4. CheckBox
        setCheckValues('memChk', ['C', 'P']);
    }
</script>

</body>
</html>
