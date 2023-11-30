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
</body>

</html>
