
function fn_callAjax(paramUrl, paramData, paramMethodType, cbFunc){
    $.ajax({
        url: paramUrl,
        type: paramMethodType,
        data: paramData,
        dataType: "json",
        // contentType:"application/json", 이거 쓰면 post로 갈때 파라미터가 안날라감 response payload
        success: function( data ){
            cbFunc(data);
        },
        error: function(xhr, status, error){
            alert(xhr.responseText);
        },
        complete: function(xhr, status){}
    });
}

function fn_formReset( frmID ){
    $('#' + frmID).find('input').val('');
    $('#' + frmID).find('select option').attr('selected',false);
    $('#' + frmID).find('select option:eq(0)').attr('selected',true);
}

// Ajax 호출 시 Form Data를 Json형태로 변경해줌
$.fn.serializeObject = function() {
    var obj = null;
    try {
        if(this[0].tagName && this[0].tagName.toUpperCase() == "FORM" ) {
            var arr = this.serializeArray();
            if(arr){ obj = {};
                jQuery.each(arr, function() {
                    obj[this.name] = this.value; });
            }
        }
    }catch(e) {
        alert(e.message);
    }finally {}
    return obj;
}