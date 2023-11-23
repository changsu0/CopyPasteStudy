<%--
  Created by IntelliJ IDEA.
  User: leewoojin
  Date: 2023. 11. 20.
  Time: 오후 09:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <%@ include file="/WEB-INF/jsp/common/header.jsp" %>
</head>
<body>
<jsp:include page="/WEB-INF/jsp/common/nav.jsp" />
<c:choose>
    <c:when test="${lwjMemberOne.memUid == null}">
        <h3>회원가입 신청</h3>
    </c:when>
    <c:otherwise>
        <h3>회원가입 신청 정보</h3>
    </c:otherwise>
</c:choose>
<br />

<div>
    <form:form id="frm" name="frm" action="/insertLwjMemberTemp" method="post">
        <div class="form-group">
            <label>이름</label>
            <c:if test="${lwjMemberOne.memUid == null}">
                <input type="text" name="memName" maxlength="3" value="${lwjMemberOne.memName}">
            </c:if>
            <c:if test="${lwjMemberOne.memUid != null}">
                <input type="hidden" name="memUid" value="${lwjMemberOne.memUid}">
                <input type="text" name="memName" value="${lwjMemberOne.memName}" readonly>
            </c:if>
        </div>
        <div class="form-group">
            <label>전화번호</label>
            <select name="memPhone1">
                <option value="010">010</option>
                <option value="011">011</option>
                <option value="012">012</option>
                <option value="013">013</option>
            </select>-
            <c:if test="${lwjMemberOne.memUid == null}">
                <input type="text" size=3 name="memPhone2" maxlength="4" value="${lwjMemberOne.memPhone2}">-
                <input type="text" size=3 name="memPhone3" maxlength="4" value="${lwjMemberOne.memPhone3}">
            </c:if>
            <c:if test="${lwjMemberOne.memUid != null}">
                <input type="text" size=3 name="memPhone2" value="${lwjMemberOne.memPhone.substring(3,7)}" readonly>-
                <input type="text" size=3 name="memPhone3" value="${lwjMemberOne.memPhone.substring(7,11)}" readonly>
            </c:if>
        </div>
        <div class="form-group">
            <label>주민번호</label>
            <c:if test="${lwjMemberOne.memUid == null}">
                <input type="text" size=3 name="memRegNum1" maxlength="6" value="${lwjMemberOne.memRegNum1}">-
                <input type="text" size=4 name="memRegNum2" maxlength="7" value="${lwjMemberOne.memRegNum2}">
            </c:if>
            <c:if test="${lwjMemberOne.memUid != null}">
                <input type="text" size=3 name="memRegNum1" value="${lwjMemberOne.memRegNum.substring(0,6)}" readonly>-
                <input type="text" size=4 name="memRegNum2" value="${lwjMemberOne.memRegNum.substring(6,13)}" readonly>
            </c:if>
        </div>
        <div class="form-group">
            <label>취미</label>
            <c:if test="${lwjMemberOne.memUid == null}">
                <input type="checkbox" name="memChk" value="C">CRUD <%--value=DB에 들어가는 값 --%>
                <input type="checkbox" name="memChk" value="Q">Query
                <input type="checkbox" name="memChk" value="F">Function
                <input type="checkbox" name="memChk" value="P">Procedure
            </c:if>
            <c:if test="${lwjMemberOne.memUid != null}">
                <input type="checkbox" name="memChk" value="C">CRUD
                <input type="checkbox" name="memChk" value="Q">Query
                <input type="checkbox" name="memChk" value="F">Function
                <input type="checkbox" name="memChk" value="P">Procedure
            </c:if>
        </div>
        <div class="form-group">
            <label>골라</label>
            <c:if test="${lwjMemberOne.memUid == null}">
                <input type="radio" name="memRdo" value="E">유럽
                <input type="radio" name="memRdo" value="S">동남아
                <input type="radio" name="memRdo" value="J">일본
            </c:if>
            <c:if test="${lwjMemberOne.memUid != null}">
                <input type="radio" name="memRdo" value="${lwjMemberOne.memRdo}" onclick="return(false);">유럽
                <input type="radio" name="memRdo" value="${lwjMemberOne.memRdo}" onclick="return(false);">동남아
                <input type="radio" name="memRdo" value="${lwjMemberOne.memRdo}" onclick="return(false);">일본
            </c:if>
        </div>
        <div class="form-group">
            <label>설명</label>
            <c:if test="${lwjMemberOne.memUid == null}">
                <textarea rows="5" cols="35" name="memDesc"><c:out value="${lwjMemberOne.memDesc}"/></textarea>
            </c:if>
            <c:if test="${lwjMemberOne.memUid != null}">
                <textarea rows="5" cols="35" name="memDesc" readonly><c:out value="${lwjMemberOne.memDesc}"/></textarea>
            </c:if>
        </div>
        <c:choose>
            <c:when test="${lwjMemberOne.memUid == null}">
                <button name="action" value="insert" type="submit" class="btn btn-success">회원가입 신청</button>
            </c:when>
            <c:otherwise> <%--취소 > 승인 버튼O / 가입 승인 > 승인 버튼X --%>
                <input type="button" value="취소" class="btn btn-danger" onclick="location.href='/lwjMemberList'"/>
                <button name="action" value="insert" type="submit" class="btn btn-success">가입 승인</button>
            </c:otherwise>
        </c:choose>
    </form:form>
</body>
</html>