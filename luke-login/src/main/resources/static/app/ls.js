/**
 * dep: jquery.js jquery.cookies.js  lk.js  layui
 * @type {*|{}}
 */

var ls = ls ||{} ;

//页面方法组
ls.p = {} ;
/**工作区最顶层DIV*/
ls.p.getDvWorkSpace = function(){
    return $("#dv_work_space") ;
} ;

// 数据方法组
ls.d = {} ;
ls.d.ajax = function(cnf){
    if(cnf==null) lk.er.error("ajax 没有参数") ;
    var data = {_token:ls.ck.getToken(),_jsn:lk.num.uuid()} ;
    $.extend(data,cnf.data) ;
    var alertIdx ;

    $.ajax({
        url:cnf.url
        ,type:"post"
        ,async:true
        ,data:data
        ,success:function(resp){
            if(resp.success){
                cnf.success(resp) ;
            }else{
                lk.ts.alert(resp.msg) ;
            }
        }
        ,complete:function(XMLHttpRequest, textStatus){
            lk.ts.close(alertIdx) ;
        }
        ,beforeSend:function(XMLHttpRequest){
            if(cnf.mb)
                alertIdx = lk.ts.alert("处理中,请稍等...")
        }
    }) ;
} ;

ls.d.getHtml = function(url){
    var $html ;
    $.ajax({
        url:html_url+"?jsn="+Math.random(),
        async:false,
        dataType:'html',
        success:function(template){
            $html = $($(template).html()) ;
        }
    }) ;
    return $html ;
}

//cookies方法组
ls.ck = {} ;
ls.ck.getToken = function(){
    return $.cookie("luke-shop-token") ;
} ;
ls.ck.setToken = function(token){
    $.cookie("luke-shop-token",token,{expires:7}) ;
};
ls.ck.delToken = function(){
    $.removeCookie("luke-shop-token") ;
} ;

ls.ck.setLoginData = function(userName,passWord){
    $.cookie("luke-shop-loginName",userName,{expires:7}) ;
    $.cookie("luke-shop-passWord",passWord,{expires:7}) ;
} ;

ls.ck.getLoginData = function(){
    return {
        username: $.cookie("luke-shop-loginName")
        ,password:$.cookie("luke-shop-passWord")
    } ;
};


