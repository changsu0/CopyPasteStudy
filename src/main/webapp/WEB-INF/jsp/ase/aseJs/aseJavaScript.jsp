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
</head>
<body>
<jsp:include page="/WEB-INF/jsp/common/nav.jsp" />

<h5></h5>
<br />
<form id="frmEvent">
    <div class="form-row align-items-center">
        <div class="col-auto" style="padding-left: 10px">
            <button class="btn btn-info" type="button" id="btnGet">가져오기</button>
        </div>
    </div>
    <br>
    <div class="h-50">
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>
                        <input type="checkbox" id="chkAll">
                    </th>
                    <th>상품코드</th>
                    <th>상품명</th>
                    <th>거래처명</th>
                    <th>입고날짜</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>
                        <input type="checkbox" name="rowChk">
                    </td>
                    <td>I000001</td>
                    <td>키보드</td>
                    <td>A사</td>
                    <td>2024.01.12</td>
                </tr>
                <tr>
                    <td>
                        <input type="checkbox" name="rowChk">
                    </td>
                    <td>I000002</td>
                    <td>마우스</td>
                    <td>A사</td>
                    <td>2024.01.12</td>
                </tr>
                <tr>
                    <td>
                        <input type="checkbox" name="rowChk">
                    </td>
                    <td>I000003</td>
                    <td>스피커</td>
                    <td>B사</td>
                    <td>2024.01.10</td>
                </tr>
                <tr>
                    <td>
                        <input type="checkbox" name="rowChk">
                    </td>
                    <td>I000004</td>
                    <td>모니터</td>
                    <td>C사</td>
                    <td>2024.01.02</td>
                </tr>
            </tbody>
        </table>
    </div>
    <br>
    <div class="h-50">
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>상품코드</th>
                    <th>상품명</th>
                    <th>거래처명</th>
                    <th>입고날짜</th>
                </tr>
            </thead>
            <tbody>
                <tr onclick="alert('클릭!')">
                    <td>I000001</td>
                    <td>키보드</td>
                    <td>A사</td>
                    <td>2024.01.12</td>
                </tr>
            </tbody>
        </table>
    </div>
</form>

<div class="modal" id="itemModal" role="dialog" aria-labelledby="remoteModalLabel" aria-hidden="true" >
    <div class="modal-dialog">
        <div class="modal-content" >
            <div class="modal-body">
                <div class="form-row align-items-center">
                    <div class="col-auto">
                        <label class="sr-only">상품코드</label>
                        <div class="input-group mb-2">
                            <div class="input-group-prepend">
                                <div class="input-group-text">상품코드</div>
                            </div>
                            <input type="text" class="form-control" id="popItemCd" placeholder="상품코드" name="popItemCd">
                        </div>
                    </div>
                    <div class="col-auto">
                        <label class="sr-only">상품명</label>
                        <div class="input-group mb-2">
                            <div class="input-group-prepend">
                                <div class="input-group-text">상품명</div>
                            </div>
                            <input type="text" class="form-control" id="popItemNm" placeholder="상품명" name="popItemNm">
                        </div>
                    </div>
                    <div class="col-auto">
                        <label class="sr-only">거래처명</label>
                        <div class="input-group mb-2">
                            <div class="input-group-prepend">
                                <div class="input-group-text">거래처명</div>
                            </div>
                            <input type="text" class="form-control" id="popOwner" placeholder="거래처명" name="popOwner">
                        </div>
                    </div>
                    <div class="col-auto">
                        <label class="sr-only">입고날짜</label>
                        <div class="input-group mb-2">
                            <div class="input-group-prepend">
                                <div class="input-group-text">입고날짜</div>
                            </div>
                            <input type="text" class="form-control" id="popInDate" placeholder="입고날짜" name="popInDate">
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
                <button type="button" class="btn btn-primary" id="btn_save">저장</button>
            </div>
        </div>
    </div>
</div>


<script>
    $(document).ready( function (){
        $('#btnGet').click( function (){
            fn_getRowData();
        });

        $('#chkAll').click( function (){
            fn_checkAll($(this), 'rowChk');
        });

    });

    const fn_showModal = function (){
      $('#itemModal').modal("show");
        fn_getRowData();
    };

    const fn_getRowData = function(){
       let chkRowCnt = $('input[name=rowChk]').length;
       let checkedRowCnt = $('input[name=rowChk]:checked').length;

       let checkedBox = $('input[name=rowChk]:checked');
       let rowData = [];
       let tdArr = [];

       console.log('---------------------------------------');
       console.log('체크박스 갯수: '+chkRowCnt);
       console.log('체크된 체크박스 갯수: '+checkedRowCnt);
       console.log('---------------------------------------');

        checkedBox.each( function(i) {

            let tr = checkedBox.parent().parent().eq(i);
            let td = tr.children();

            rowData.push(tr.text());

            var itemCd = td.eq(1).text()+", "
            var itemNm = td.eq(2).text()+", ";
            var owner = td.eq(3).text()+", ";
            var inDate = td.eq(4).text()+", ";

            tdArr.push(itemCd);
            tdArr.push(itemNm);
            tdArr.push(owner);
            tdArr.push(inDate);

        });

        alert('체크된 데이터: '+rowData);

    }

    const fn_checkAll = function (thisChk, name){
        if(thisChk.is(':checked')){
            $('input[name="'+ name +'"]').prop('checked', true);
        }else {
            $('input[name="'+ name +'"]').prop('checked', false);
        }
    };

</script>

</html>
