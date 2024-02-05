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
    <script src="https://code.jquery.com/jquery-3.7.0.js"></script>
    <script src="https://cdn.datatables.net/1.13.7/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/select/1.7.0/js/dataTables.select.min.js"></script>
    <link rel="stylesheet" href="https://cdn.datatables.net/1.13.7/css/jquery.dataTables.min.css" />
</head>
<body>
<jsp:include page="/WEB-INF/jsp/common/nav.jsp" />

<h3>Yjs DataTables_공통코드</h3>
<br />
<div id="tableDiv" style="display: flex; width: 100%;">
<table id="" class="display" style="flex: 1">
    <thead>
    <tr>
        <th>공통코드</th>
        <th>공통코드명</th>
        <th>공통코드설명</th>
        <th>생성자</th>
        <th>생성일시</th>
    </tr>
    </thead>
</table>
    <div style="width: 30px;"></div>
<table id="" class="display" style="flex:1">
    <thead>
    <tr>
        <th>공통코드</th>
        <th>상세코드</th>
        <th>상세코드명</th>
        <th>상세코드설명</th>
        <th>사용여부</th>
        <th>생성자</th>
        <th>생성일시</th>
    </tr>
    </thead>
</table>
</div>
</body>

<script>
    new DataTable('table.display');
</script>
</html>
