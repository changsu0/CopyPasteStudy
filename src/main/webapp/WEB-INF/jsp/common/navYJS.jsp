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
                <c:forEach var="list" items="${sessionScope.menuVOList}" varStatus="status">
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="${list.menuId}" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                ${list.menuNm}
                        </a>
                        <c:set var="dep2Flg" value="Y"/>
                        <c:forEach var="list2" items="${sessionScope.yjsMenu2Dep}" varStatus="status2">
                            <c:if test="${list.menuId eq list2.menuUpId}">
                                <c:if test="${dep2Flg eq 'Y'}">
                                    <div class="dropdown-menu" aria-labelledby="${list.menuId}">
                                </c:if>
                                <a class="dropdown-item" href="${list2.menuUrl}">${list2.menuNm}</a>
                                <c:if test="${status2.index eq fn:length(sessionScope.yjsMenu2Dep)}">
                                    </div>
                                </c:if>
                                <c:set var="dep2Flg" value="N"/>
                            </c:if>
                        </c:forEach>
                    </li>
                </c:forEach>
            </ul>
        </div>
    </nav>
    <hr />
</body>
<script>
    window.addEventListener('DOMContentLoaded', function() {
        // dep1Draw();
    });
    const dep1Draw = function(){
        JS_COMMON.fn_callAjaxForm('/yjsMenuUpIdNull', '', 'get', dep1CB, true);
    };
    function dep1CB(result) {
        let dep1Html = '<ul class="navbar-nav mr-auto">';
        let resultData = result.data;
        console.log(resultData);

        // for(let i=0; i < resultData.length; i++) {
        //     if(resultData[i].menuUpId === ' ' || resultData[i].menuUpId === null){
        //         console.log(resultData[i].menuId);
        //         dep1Html += '<li class="nav-item dropdown">';
        //         dep1Html += '<a class="nav-link dropdown-toggle" href="#" id="' + resultData[i].menuId + '" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">';
        //         dep1Html += resultData[i].menuNm;
        //         dep1Html += '</a>';
        //         dep1Html += '</li>';
        //     }
        // }
        // dep1Html += '</ul>';
        // $('#menuDepth').html(dep1Html);
    }
</script>
</html>
