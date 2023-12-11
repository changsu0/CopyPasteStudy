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

<h3 class="col-auto">JQ Data</h3>
<br />
<div>
    <form:form id="frm" name="frm" action="/insertAseMultiRow" method="post">
        <div class="col-auto">
            <label for="inpVal"></label>
            <input type="text" class="" id="inpVal" placeholder="" name="inpVal">

            <label for="selVal"></label>
            <select name="selVal" id="selVal">
                <option value="">선택1~5</option>
                <option value="Sel1">1</option>
                <option value="Sel2">2</option>
                <option value="Sel3">3</option>
                <option value="Sel4">4</option>
                <option value="Sel5">5</option>
            </select>

            <input type="radio" name="rdoVal" value="rdo1">라디오1
            <input type="radio" name="rdoVal" value="rdo2">라디오2

            <input type="checkbox" name="chkVal" value="chk1">체크1
            <input type="checkbox" name="chkVal" value="chk2">체크2
            <input type="checkbox" name="chkVal" value="chk3">체크3

            <button name="action" value="insert" type="submit" class="btn btn-success" >저장</button>
        </div>
    </form:form>

        <div class="col-auto">
            <table>
                <tr>
                    <td>
                        <select multiple="multiple" id="leftList" style="width: 70px; min-height: 100px;">
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                        </select>
                    </td>
                    <td>
                        <button href="#" onclick="multiMove('leftList','rightList'); return false;" class="btn-outline-primary"> → </button>
                        <br><br>
                        <button href="#" onclick="multiMove('rightList','leftList'); return false;" class="btn-outline-primary"> ← </button>
                    </td>
                    <td>
                        <select multiple="multiple" id="rightList" style="width: 70px; min-height: 100px;" aria-sort="ascending">
                            <option value="4">4</option>
                            <option value="5">5</option>
                        </select>
                    </td>
                </tr>
            </table>
        </div>

    <script>
        const multiMove = function(moveListNm, listNm){
            let val = $('#'+moveListNm+' option:selected').val();
            let text = $('#'+moveListNm+' option:selected').text();

            $('#'+listNm+'').append('<option value ='+val+'>'+text+'</option>');
            $('#'+moveListNm+'').find('option[value ="'+val+'"]').remove();
            console.log(val);
        }
    </script>

</body>

</html>
