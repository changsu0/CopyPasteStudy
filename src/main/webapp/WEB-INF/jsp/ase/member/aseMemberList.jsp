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
                <input type="radio" name="memRdo" value="" <c:if test="${chkRdo == ''}">checked</c:if>>전체
                <input type="radio" name="memRdo" value="E" <c:if test="${chkRdo == 'E'}">checked</c:if>>유럽
                <input type="radio" name="memRdo" value="J" <c:if test="${chkRdo == 'J'}">checked</c:if>>일본
                <input type="radio" name="memRdo" value="A" <c:if test="${chkRdo == 'A'}">checked</c:if>>동남 아시아
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
        <div class="col-auto">
            <button name="action" class="btn btn-info" type="submit">조회</button>
        </div>
    </div>
</form:form>
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
                            <button type="button" name="approve" class="btn btn-info" onclick="location.href='/aseMemberForm?memUid=${list.memUid}'">승인</button>
                        </c:if>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>

</html>
