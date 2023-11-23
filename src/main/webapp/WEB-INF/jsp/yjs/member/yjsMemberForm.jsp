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
    <%@ include file="/WEB-INF/jsp/common/header.jsp" %>
</head>
<body>
<jsp:include page="/WEB-INF/jsp/common/nav.jsp" />
<c:choose>
    <c:when test="${empty yjsMemberVO.memName}">
        <h3>YJS Member 신청</h3>
    </c:when>
    <c:otherwise>
        <h3>YJS Member 승인</h3>
    </c:otherwise>
</c:choose>
<br />

<div>
    <form:form id="frm" name="frm" action="/yjsMemberFormSave" method="post">
        <input type="hidden" name="memUid" value="${yjsMemberVO.memUid}">
        <div class="form-group">
            <label>이름</label>
            <c:choose>
                <c:when test="${empty yjsMemberVO.memName}">
                    <input type="text" minlength="2" maxlength="3" class="" id="memName" placeholder="" name="memName" value="${yjsMemberVO.memName}">
                </c:when>
                <c:otherwise>
                    <input type="text" minlength="2" maxlength="3" class="" id="memName" placeholder="" name="memName" value="${yjsMemberVO.memName}" readonly>
                </c:otherwise>
            </c:choose>
        </div>
        <div class="form-group">
            <label>전화번호</label>
            <c:choose>
                <c:when test="${empty yjsMemberVO.memName}">
                    <select class="" name="memPhone1">
                        <option>010</option>
                        <option>011</option>
                        <option>012</option>
                        <option>013</option>
                    </select> -
                    <input type="text" minlength="4" maxlength="4" class="" placeholder="" name="memPhone2" value="${yjsMemberVO.memPhone2}"> -
                    <input type="text" minlength="4" maxlength="4" class="" placeholder="" name="memPhone3" value="${yjsMemberVO.memPhone3}">
                </c:when>
                <c:otherwise>
                    <select class="" name="memPhone1" disabled="disabled">
                        <c:choose>
                            <c:when test="${yjsMemberVO.memPhone1 eq '010'}">
                                <option selected="selected">010</option>
                                <option>011</option>
                                <option>012</option>
                                <option>013</option>
                            </c:when>
                            <c:when test="${yjsMemberVO.memPhone1 eq '011'}">
                                <option>010</option>
                                <option selected="selected">011</option>
                                <option>012</option>
                                <option>013</option>
                            </c:when>
                            <c:when test="${yjsMemberVO.memPhone1 eq '012'}">
                                <option>010</option>
                                <option>011</option>
                                <option selected="selected">012</option>
                                <option>013</option>
                            </c:when>
                            <c:otherwise>
                                <option>010</option>
                                <option>011</option>
                                <option>012</option>
                                <option selected="selected">013</option>
                            </c:otherwise>
                        </c:choose>
                    </select> -
                    <input type="text" minlength="4" maxlength="4" class="" placeholder="" name="memPhone2" value="${yjsMemberVO.memPhone2}" readonly> -
                    <input type="text" minlength="4" maxlength="4" class="" placeholder="" name="memPhone3" value="${yjsMemberVO.memPhone3}" readonly>
                </c:otherwise>
            </c:choose>
        </div>
        <div class="form-group">
            <label>주민번호</label>
            <c:choose>
                <c:when test="${empty yjsMemberVO.memName}">
                    <input type="text" minlength="6" maxlength="6" class="" placeholder="" name="memRegNum1" value="${yjsMemberVO.memRegNum1}"> -
                    <input type="text" minlength="7" maxlength="7" class="" placeholder="" name="memRegNum2" value="${yjsMemberVO.memRegNum2}">
                </c:when>
                <c:otherwise>
                    <input type="text" minlength="6" maxlength="6" class="" placeholder="" name="memRegNum1" value="${yjsMemberVO.memRegNum1}" readonly> -
                    <input type="text" minlength="7" maxlength="7" class="" placeholder="" name="memRegNum2" value="${yjsMemberVO.memRegNum2}" readonly>
                </c:otherwise>
            </c:choose>
        </div>
        <div class="form-group">
            <label>취미</label>
            <c:choose>
                <c:when test="${empty yjsMemberVO.memName}">
                    <input type="checkbox" name="memChk" value="C">CRUD
                    <input type="checkbox" name="memChk" value="Q">Query
                    <input type="checkbox" name="memChk" value="F">Function
                    <input type="checkbox" name="memChk" value="P">Procedure
                </c:when>
                <c:otherwise>
                    <input type="checkbox" name="memChk" value="C" disabled="disabled" <c:if test = "${fn:contains(yjsMemberVO.memChk, 'C')}">checked="checked"</c:if>>CRUD
                    <input type="checkbox" name="memChk" value="Q" disabled="disabled" <c:if test = "${fn:contains(yjsMemberVO.memChk, 'Q')}">checked="checked"</c:if>>Query
                    <input type="checkbox" name="memChk" value="F" disabled="disabled" <c:if test = "${fn:contains(yjsMemberVO.memChk, 'F')}">checked="checked"</c:if>>Function
                    <input type="checkbox" name="memChk" value="P" disabled="disabled" <c:if test = "${fn:contains(yjsMemberVO.memChk, 'P')}">checked="checked"</c:if>>Procedure
                </c:otherwise>
            </c:choose>
        </div>
        <div class="form-group">
            <label>국가</label>
            <c:choose>
                <c:when test="${empty yjsMemberVO.memName}">
                    <input type='radio' name='memRdo' value='E' />유럽
                    <input type='radio' name='memRdo' value='S' />동남아
                    <input type='radio' name='memRdo' value='J' />일본
                </c:when>
                <c:otherwise>
                    <input type='radio' name='memRdo' value='E' disabled="disabled" <c:if test="${yjsMemberVO.memRdo == 'E'}">checked="checked"</c:if>>유럽
                    <input type='radio' name='memRdo' value='S' disabled="disabled" <c:if test="${yjsMemberVO.memRdo == 'S'}">checked="checked"</c:if>/>동남아
                    <input type='radio' name='memRdo' value='J' disabled="disabled" <c:if test="${yjsMemberVO.memRdo == 'J'}">checked="checked"</c:if>/>일본
                </c:otherwise>
            </c:choose>
        </div>
        <div class="form-group">
            <label>설명</label>
            <c:choose>
                <c:when test="${empty yjsMemberVO.memName}">
                    <textarea rows="5" cols="80" name="memDesc">${yjsMemberVO.memDesc}</textarea>
                </c:when>
                <c:otherwise>
                    <textarea rows="5" cols="80" name="memDesc" readonly>${yjsMemberVO.memDesc}</textarea>
                </c:otherwise>
            </c:choose>
        </div>
        <c:choose>
        <c:when test="${empty yjsMemberVO.memName}">
        <button name="action" value="insert" type="submit" class="btn btn-success">회원가입 신청</button>
        </c:when>
        <c:otherwise>
        <button type="button" onclick="location.href='/yjsMemberList'" class="btn btn-danger">취소</button>
        <button name="action" value="recognize" type="submit" class="btn btn-success">가입 승인</button>
        </c:otherwise>
        </c:choose>
    </form:form>
</body>

</html>
