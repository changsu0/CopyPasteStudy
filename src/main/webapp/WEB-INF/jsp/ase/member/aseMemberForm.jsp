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
                <c:when test="${aseMemberVO.memUid eq null}">
                    <input type="text" class="" id="memName" name="memName" value="${aseMemberVO.memName}" maxlength="3">
                </c:when>
                <c:otherwise>
                    <input type="text" class="" id="memName" name="memName" value="${aseMemberVO.memName}" readonly>
                </c:otherwise>
            </c:choose>
        </div>
        <div class="form-group">
            <label>전화번호</label>
            <select name="memPhone1">
                <c:forEach var="list" items="${phone}">
                    <c:choose>
                        <c:when test="${list.commDtCd eq aseMemberVO.memPhone1}">
                            <option value="${list.commDtCd}" selected disabled>${list.commDtNm}</option>
                        </c:when>
                        <c:otherwise>
                            <option value="${list.commDtCd}">${list.commDtNm}</option>
                        </c:otherwise>
                    </c:choose>
                </c:forEach>
            </select>-
            <c:choose>
                <c:when test="${aseMemberVO.memUid eq null}">
                    <input type="text" name="memPhone2" maxlength="4" value="${aseMemberVO.memPhone2}" /> -
                    <input type="text" name="memPhone3" maxlength="4" value="${aseMemberVO.memPhone3}" />
                </c:when>
                <c:otherwise>
                    <input type="text" name="memPhone2" maxlength="4" value="${aseMemberVO.memPhone2}" readonly/> -
                    <input type="text" name="memPhone3" maxlength="4" value="${aseMemberVO.memPhone3}" readonly />
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
            <c:forEach var="list" items="${check}">
                <c:set var="chk" value="N"/>
                    <c:forEach var="chkList" items="${aseMemberVO.memChkList}">
                        <c:if test="${list.commDtCd eq chkList}">
                            <c:set var="chk" value="Y" />
                        </c:if>
                    </c:forEach>
                    <c:if test="${chk eq 'Y'}">
                        <input type="checkbox" name="memChk" value="${list.commDtCd}" checked disabled/> ${list.commDtNm}
                    </c:if>
                    <c:if test="${chk eq 'N'}">
                        <input type="checkbox" name="memChk" value="${list.commDtCd}" /> ${list.commDtNm}
                    </c:if>
            </c:forEach>
        </div>
        <div class="form-group">
            <label>선택</label>
            <c:forEach var="list" items="${radio}">
                    <input type="radio" class="" name="memRdo" value="${list.commDtCd}" <c:if test="${list.commDtCd == aseMemberVO.memRdo}">checked disabled</c:if>> ${list.commDtNm}
            </c:forEach>
        </div>
        <div class="form-group">
            <label>설명</label>
            <c:choose>
                <c:when test="${aseMemberVO.memUid eq null}">
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
