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

<h3>Yjs DataTables 02</h3>
<br />
<div id="tableDiv" style="display: flex; width: 100%;">
<table id="" class="display" style="flex: 1">
    <thead>
    <tr>
        <th>Name</th>
        <th>Position</th>
        <th>Office</th>
        <th>Age</th>
        <th>Salary</th>
    </tr>
    </thead>
    <tbody>
    <tr>
        <td>Tiger Nixon</td>
        <td>System Architect</td>
        <td>Edinburgh</td>
        <td>61</td>
        <td>$320,800</td>
    </tr>
    <tr>
        <td>Cedric Kelly</td>
        <td>Senior Javascript Developer</td>
        <td>Edinburgh</td>
        <td>22</td>
        <td>$433,060</td>
    </tr>
    <tr>
        <td>Sonya Frost</td>
        <td>Software Engineer</td>
        <td>Edinburgh</td>
        <td>23</td>
        <td>$103,600</td>
    </tr>
    <tr>
        <td>Quinn Flynn</td>
        <td>Support Lead</td>
        <td>Edinburgh</td>
        <td>22</td>
        <td>$342,000</td>
    </tr>
    <tr>
        <td>Dai Rios</td>
        <td>Personnel Lead</td>
        <td>Edinburgh</td>
        <td>35</td>
        <td>$217,500</td>
    </tr>
    <tr>
        <td>Gavin Joyce</td>
        <td>Developer</td>
        <td>Edinburgh</td>
        <td>42</td>
        <td>$92,575</td>
    </tr>
    <tr>
        <td>Martena Mccray</td>
        <td>Post-Sales support</td>
        <td>Edinburgh</td>
        <td>46</td>
        <td>$324,050</td>
    </tr>
    <tr>
        <td>Jennifer Acosta</td>
        <td>Junior Javascript Developer</td>
        <td>Edinburgh</td>
        <td>43</td>
        <td>$75,650</td>
    </tr>
    <tr>
        <td>Shad Decker</td>
        <td>Regional Director</td>
        <td>Edinburgh</td>
        <td>51</td>
        <td>$183,000</td>
    </tr>
    </tbody>
</table>
    <div style="width: 30px;"></div>
<table id="" class="display" style="flex:1">
    <thead>
    <tr>
        <th>Name</th>
        <th>Position</th>
        <th>Office</th>
        <th>Age</th>
        <th>Salary</th>
    </tr>
    </thead>
    <tbody>
    <tr>
        <td>Jena Gaines</td>
        <td>Office Manager</td>
        <td>London</td>
        <td>30</td>
        <td>$90,560</td>
    </tr>
    <tr>
        <td>Haley Kennedy</td>
        <td>Senior Marketing Designer</td>
        <td>London</td>
        <td>43</td>
        <td>$313,500</td>
    </tr>
    <tr>
        <td>Tatyana Fitzpatrick</td>
        <td>Regional Director</td>
        <td>London</td>
        <td>19</td>
        <td>$385,750</td>
    </tr>
    <tr>
        <td>Michael Silva</td>
        <td>Marketing Designer</td>
        <td>London</td>
        <td>66</td>
        <td>$198,500</td>
    </tr>
    <tr>
        <td>Bradley Greer</td>
        <td>Software Engineer</td>
        <td>London</td>
        <td>41</td>
        <td>$132,000</td>
    </tr>
    <tr>
        <td>Angelica Ramos</td>
        <td>Chief Executive Officer (CEO)</td>
        <td>London</td>
        <td>47</td>
        <td>$1,200,000</td>
    </tr>
    <tr>
        <td>Suki Burks</td>
        <td>Developer</td>
        <td>London</td>
        <td>53</td>
        <td>$114,500</td>
    </tr>
    <tr>
        <td>Prescott Bartlett</td>
        <td>Technical Author</td>
        <td>London</td>
        <td>27</td>
        <td>$145,000</td>
    </tr>
    <tr>
        <td>Timothy Mooney</td>
        <td>Office Manager</td>
        <td>London</td>
        <td>37</td>
        <td>$136,200</td>
    </tr>
    <tr>
        <td>Bruno Nash</td>
        <td>Software Engineer</td>
        <td>London</td>
        <td>38</td>
        <td>$163,500</td>
    </tr>
    <tr>
        <td>Hermione Butler</td>
        <td>Regional Director</td>
        <td>London</td>
        <td>47</td>
        <td>$356,250</td>
    </tr>
    <tr>
        <td>Lael Greer</td>
        <td>Systems Administrator</td>
        <td>London</td>
        <td>21</td>
        <td>$103,500</td>
    </tr>
    </tbody>
</table>
</div>
</body>

<script>
    new DataTable('table.display');
</script>
</html>
