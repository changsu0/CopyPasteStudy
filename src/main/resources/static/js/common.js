
let JS_COMMON = {
    fn_callAjaxForm : function (paramUrl, paramData, paramMethodType, cbFunc, asyncFlag){
        $.ajax({
            url: paramUrl,
            type: paramMethodType,
            data: paramData,
            dataType: "json",
            async: asyncFlag,
            //contentType:"application/json", //이거 쓰면 Form post로 갈때 파라미터가 안날라감 response payload
            success: function( data ){
                cbFunc(data);
            },
            error: function(xhr, status, error){
                alert(xhr.responseText);
            },
            complete: function(xhr, status){}
        });
    }

    , fn_callAjaxJson : function (paramUrl, paramData, paramMethodType, cbFunc, asyncFlag){
        $.ajax({
            url: paramUrl,
            type: paramMethodType,
            data: paramData,
            dataType: "json",
            async: asyncFlag,
            contentType:"application/json", //Json으로 데이터를 보내줄땐 써줘야함
            success: function( data ){
                cbFunc(data);
            },
            error: function(xhr, status, error){
                alert(xhr.responseText);
            },
            complete: function(xhr, status){}
        });
    }

    , fn_formReset : function ( frmID ){
        $('#' + frmID).find('input').val('');
        $('#' + frmID).find('select option').each(function (){
            $(this).prop('selected',false);
        });
        $('#' + frmID).find('select option:eq(0)').prop('selected',true);
    }

    // Ajax 호출 시 Form Data를 Json형태로 변경해줌
    , serializeObject : function() {
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
}
Window.JS_COMMON = JS_COMMON;
