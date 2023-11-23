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
    <%@ include file="/WEB-INF/jsp/common/header.jsp" %>
</head>
<body>
<jsp:include page="/WEB-INF/jsp/common/nav.jsp" />
    <h3>회원가입 신청</h3>
<br />

<div>
    <!-- action = 데이터 저장할 이름 => URL -->
    <form:form id="frm" name="frm" action="/insertKcsMem" method="post">
        <div class="form-group">
            <label>이름</label>
            <input type="hidden" name="memUid" value="${memVO.memUid}"/>
            <input type="text" name="memName" maxlength="3" value="${memVO.memName}"/>
        </div>
        <div class="form-group">
            <label>전화번호</label>
            <select name="memPhone1" >
                <c:forEach var="list" items="${phone}">
                    <c:choose>
                        <c:when test="${list.commDtCd eq memVO.memPhone1}">
                            <option value="${list.commDtCd}" selected="selected">${list.commDtNm}</option>
                        </c:when>
                        <c:otherwise>
                            <option value="${list.commDtCd}">${list.commDtNm}</option>
                        </c:otherwise>
                    </c:choose>
                </c:forEach>
            </select> -
            <input type="text" name="memPhone2" maxlength="4" value="${memVO.memPhone2}" /> -
            <input type="text" name="memPhone3" maxlength="4" value="${memVO.memPhone3}" />
        </div>
        <div class="form-group">
            <label>주민번호</label>
            <input type="text" name="memRegNum1" maxlength="6" value="${memVO.memRegNum1}"  /> -
            <input type="text" name="memRegNum2" maxlength="7" value="${memVO.memRegNum2}" />
        </div>
        <div class="form-group">
            <label>취미</label>
            <c:forEach var="list" items="${chk}">
                <input type="checkbox" name="memChk" value="${list.commDtCd}" /> ${list.commDtNm}
            </c:forEach>
        </div>
        <div class="form-group">
            <label>골라</label>
            <c:forEach var="list" items="${rdo}">
                <c:choose>
                    <c:when test="${list.commDtCd == memVO.memRdo}">
                        <input type="radio" name="memRdo" value="${list.commDtCd}" checked /> ${list.commDtNm}
                    </c:when>
                    <c:otherwise>
                        <input type="radio" name="memRdo" value="${list.commDtCd}" /> ${list.commDtNm}
                    </c:otherwise>
                </c:choose>
            </c:forEach>
        </div>
        <div class="form-group">
            <label>설명</label>
            <textarea name="memDesc" cols="20" rows="4">${memVO.memDesc}</textarea>
        </div>
        <button name="action" type="submit" class="btn btn-success">회원가입 신청</button>
    </form:form>
</body>
</html>