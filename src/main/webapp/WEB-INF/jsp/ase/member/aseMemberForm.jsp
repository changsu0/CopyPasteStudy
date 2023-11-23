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

<h3>회원가입</h3>
<br />
<div>
    <form:form id="frm" name="frm" action="/insertAseMember" method="post">
        <div class="form-group">
            <label>이름</label>
            <input type="hidden" class="" id="memUid" name="memUid" value="${aseMemberVO.memUid}">
            <c:choose>
                <c:when test="${aseMemberVO.memUid == null}">
                    <input type="text" class="" id="memName" name="memName" value="${aseMemberVO.memName}" maxlength="3">
                </c:when>
                <c:otherwise>
                    <input type="text" class="" id="memName" name="memName" value="${aseMemberVO.memName}" readonly>
                </c:otherwise>
            </c:choose>
        </div>
        <div class="form-group">
            <label>전화번호</label>
            <c:choose>
                <c:when test="${aseMemberVO.memUid == null}">
                    <select class="" name="memPhone1">
                        <option value="010">010</option>
                        <option value="011">011</option>
                        <option value="012">012</option>
                        <option value="013">013</option>
                    </select>
                    -
                    <input type="text" class="" name="memPhone2" value="${aseMemberVO.memPhone2}" maxlength="4" pattern="[0-9]+">
                    -
                    <input type="text" class="" name="memPhone3" value="${aseMemberVO.memPhone3}" maxlength="4" pattern="[0-9]+">
                </c:when>
                <c:otherwise>
                    <select class="" name="memPhone1" id="memPhone1" disabled>
                        <c:choose>
                            <c:when test="${aseMemberVO.memPhone1 == '010'}">
                                <option value="010" selected>010</option>
                            </c:when>
                            <c:when test="${aseMemberVO.memPhone1 == '011'}">
                                <option value="011" selected>011</option>
                            </c:when>
                            <c:when test="${aseMemberVO.memPhone1 == '012'}">
                                <option value="012" selected>012</option>
                            </c:when>
                            <c:otherwise>
                                <option value="013" selected>013</option>
                            </c:otherwise>
                        </c:choose>
                    </select>
                    -
                    <input type="text" class="" name="memPhone2" value="${aseMemberVO.memPhone2}" readonly>
                    -
                    <input type="text" class="" name="memPhone3" value="${aseMemberVO.memPhone3}" readonly>
                </c:otherwise>
            </c:choose>
        </div>
        <div class="form-group">
            <label>주민번호</label>
            <c:choose>
                <c:when test="${aseMemberVO.memUid eq null}">
                    <input type="text" class="" name="memRegNum1" value="${aseMemberVO.memRegNum1}" maxlength="6" pattern="[0-9]+">
                    -
                    <input type="text" class="" name="memRegNum2" value="${aseMemberVO.memRegNum2}" maxlength="7" pattern="[0-9]+">
                </c:when>
                <c:otherwise>
                    <input type="text" class="" name="memRegNum1" value="${aseMemberVO.memRegNum1}" readonly>
                    -
                    <input type="text" class="" name="memRegNum2" value="${aseMemberVO.memRegNum2}" readonly>
                </c:otherwise>
            </c:choose>
        </div>
        <div class="form-group">
            <label>취미</label>
            <c:choose>
                <c:when test="${aseMemberVO.memUid eq null}">
                <input type="checkbox" class="" name="memChk" value="C">CRUD
                <input type="checkbox" class="" name="memChk" value="Q">Query
                <input type="checkbox" class="" name="memChk" value="F">Function
                <input type="checkbox" class="" name="memChk" value="P">Procedure
                </c:when>
                <c:otherwise>
                <input type="checkbox" class="" name="memChk" value="C" <c:if test="${fn:contains(aseMemberVO.memChk, 'C')}">checked</c:if> disabled>CRUD
                <input type="checkbox" class="" name="memChk" value="Q" <c:if test="${fn:contains(aseMemberVO.memChk, 'Q')}">checked</c:if> disabled>Query
                <input type="checkbox" class="" name="memChk" value="F" <c:if test="${fn:contains(aseMemberVO.memChk, 'F')}">checked</c:if> disabled>Function
                <input type="checkbox" class="" name="memChk" value="P" <c:if test="${fn:contains(aseMemberVO.memChk, 'P')}">checked</c:if> disabled>Procedure
                </c:otherwise>
            </c:choose>
        </div>
        <div class="form-group">
            <label>선택</label>
            <c:choose>
                <c:when test="${aseMemberVO.memUid eq null}">
                    <input type="radio" class="" name="memRdo" value="E">유럽
                    <input type="radio" class="" name="memRdo" value="SA">동남아
                    <input type="radio" class="" name="memRdo" value="J">일본
                </c:when>
                <c:otherwise>
                    <input type="radio" class="" name="memRdo" value="E" <c:if test="${aseMemberVO.memRdo == 'E'}">checked</c:if> disabled>유럽
                    <input type="radio" class="" name="memRdo" value="SA" <c:if test="${aseMemberVO.memRdo == 'S'}">checked</c:if> disabled>동남아
                    <input type="radio" class="" name="memRdo" value="J" <c:if test="${aseMemberVO.memRdo == 'J'}">checked</c:if> disabled>일본
                </c:otherwise>
            </c:choose>
        </div>
        <div class="form-group">
            <label>설명</label>
            <c:choose>
                <c:when test="${aseMemberVO.memUid == null}">
                    <p><textarea cols="50" rows="10" name="memDesc"></textarea></p>
                </c:when>
                <c:otherwise>
                    <p><textarea cols="50" rows="10" name="memDesc" readonly>${aseMemberVO.memDesc}</textarea></p>
                </c:otherwise>
            </c:choose>
        </div>
        <c:choose>
            <c:when test="${aseMemberVO.memUid eq null}">
                <button name="action" value="insert" type="submit" class="btn btn-success">회원가입 신청</button>
            </c:when>
            <c:otherwise>
                <button name="action" value="back" type="submit" class="btn btn-danger" onclick="location.href='aseMemberList.jsp'">취소</button>
                <button name="action" value="check" type="submit" class="btn btn-success" >가입 승인</button>
            </c:otherwise>
        </c:choose>

    </form:form>
</body>

</html>
