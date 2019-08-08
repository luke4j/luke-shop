/**
 * dep: jquery.js jquery.cookies.js  lk.js  layui
 * @type {*|{}}
 */

var ls = ls ||{} ;

//页面方法组
ls.p = {} ;
/**工作区最顶层DIV*/
ls.p.getWorkSpaceBody = function(){
    return $("#_workSpaceBody") ;
} ;

/**
 *
 * @param treeTableId
 * @param checkData
 */
ls.p.setTreeChecked = function(treeTableId,checkData){
    var $treeParent = $("#"+treeTableId).parent() ;
    var $ids = $("[data-field=id]",$treeParent) ;
    $.each($ids,function(i,he_id){
        var $he_id = $(he_id) ;
        var id = $("div",$he_id).text() ;
        if(checkData){
            $.each(checkData,function(j,obj){
                if(obj.id==id){
                    $("input[type=checkbox]",$he_id.parent()).parent().click() ;
                }
            }) ;
        }

    }) ;
    layui.form.render() ;
} ;
/**
 *
 * @param treeTableId
 * @returns {string}
 */
ls.p.getTreeChecked = function(treeTableId){
    var ids = "" ;
    var $treeParent = $("#"+treeTableId).parent() ;
    var $ids = $("[data-field=id]",$treeParent) ;
    $.each($ids,function(i,he_id){
        var $he_id = $(he_id) ;
        var id = $("div",$he_id).text() ;
        if(i==0){
            ids+=id ;
        }else{
            ids+=","+id ;
        }
    }) ;
    return ids ;
}


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
                if(resp.msg)
                    lk.ts.alert(resp.msg) ;
            }
        }
        ,complete:function(XMLHttpRequest, textStatus){
            if(alertIdx)
                lk.ts.close(alertIdx) ;
        }
        ,beforeSend:function(XMLHttpRequest){
            if(cnf.mb)
                alertIdx = lk.ts.alert("处理中,请稍等...")
        }
    }) ;
} ;

ls.d.getHtml = function(html_url){
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
} ;
/** 人员下拉列表select数据负值 */
/**
 * 异步为select元素添加数据,完成之后刷新
 * @param $select
 * @param layuiForm
 */
ls.d.setUserList = function($select,layuiForm){
    ls.d.ajax({
        url:'user/findAllUser4List.act',
        success:function(res){
            $.each(res.rt,function(i,u){
                $select.append($("<option>").val(u.val).text(u.text)) ;
            }) ;
            layuiForm.render() ;
        }
    })
} ;
ls.d.tableDateParseData = function(res){
    return {
        "code": res.code, //解析接口状态
        "msg": res.msg, //解析提示文本
        "count": res.count, //解析数据长度
        "data": res.rt //解析数据列表
    };
} ;
ls.d.defSuccess = function(res){
    if(res.success){
        lk.ts.alert(res.msg) ;
    }else{
        lk.ts.alert(res.msg) ;
    }
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

ls.ck.setLoginData = function(loginName,loginPwd){
    $.cookie("luke-shop-loginName",loginName,{expires:7}) ;
    $.cookie("luke-shop-loginPwd",loginPwd,{expires:7}) ;
} ;

ls.ck.delLoginData = function(){
    $.removeCookie("luke-shop-loginName") ;
    $.removeCookie("luke-shop-loginPwd") ;
} ;

ls.ck.getLoginData = function(){
    return {
        loginName: $.cookie("luke-shop-loginName")
        ,loginPwd:$.cookie("luke-shop-loginPwd")
    } ;
};
ls.ck.setCookie = function(key,val){
    $.cookie(key,val,{expires:7}) ;
} ;
ls.ck.delCookie = function(key){
    $.removeCookie(key) ;
} ;
ls.ck.getCookie = function(key){
    return $.cookie(key) ;
} ;


