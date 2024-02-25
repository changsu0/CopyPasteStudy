<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%--
  Created by IntelliJ IDEA.
  User: kimchangsu
  Date: 2021. 8. 23.
  Time: 오후 8:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-light" style="background-color: #e3f2fd;">
        <a class="navbar-brand" href="/">Home</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <c:forEach items="${first}" var="list" varStatus="status" >
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="ase" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            ${list.menuNm}
                        </a>
                        <c:set var="dethFlag" value="Y"/>
                            <c:forEach items="${second}" var="list2" varStatus="status2" >
                                <c:if test="${list.menuId eq list2.menuUpId}">
                                    <c:if test="${ dethFlag eq 'Y'}">
                                        <div class="dropdown-menu" aria-labelledby="nav1">
                                    </c:if>
                                    <a class="dropdown-item" href="${list2.menuUrl}">
                                        ${list2.menuNm}
                                    </a>
                                    <c:if test="${status2.index == fn:length(second)}">
                                        </div>
                                    </c:if>
                                    <c:set var="dethFlag" value="N"/>
                                </c:if>
                            </c:forEach>
                    </li>
                </c:forEach>
            </ul>
        </div>
    </nav>
    <hr />
</body>
</html>
