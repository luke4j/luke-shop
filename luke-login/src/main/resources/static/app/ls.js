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


// 数据方法组
ls.d = {} ;
ls.d.ajax = function(cnf){
    if(cnf==null) lk.er.error("ajax 没有参数") ;
    var data = {_token:ls.ck.getToken(),_jsn:lk.num.uuid()} ;
    cnf.data = $.extend(cnf.data||{},data) ;
    var alertIdx ;

    var fun = cnf.success ;
    delete cnf.success ;
    cnf.success = function(resp){
        if(resp.success){
            fun(resp) ;
        }else{
            if(resp.msg)
                lk.ts.alert(resp.msg) ;
        }
    }
    $.ajax($.extend({
        type:"post"
        ,async:true
        ,complete:function(XMLHttpRequest, textStatus){
            if(alertIdx)
                lk.ts.close(alertIdx) ;
            if(XMLHttpRequest.status==200){
                //请求正常返回
            }else if(XMLHttpRequest.status==404){
                lk.ts.alert("404：后台未处理请求["+JSON.parse(XMLHttpRequest.responseText).path+"]") ;
            }else{
                lk.ts.alert(XMLHttpRequest.status+":"+XMLHttpRequest.error+"-->"+XMLHttpRequest.message) ;
            }
        }
        ,beforeSend:function(XMLHttpRequest){
            if(cnf.mb)
                alertIdx = lk.ts.alert("处理中,请稍等...")
        }
    },cnf)) ;

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
    if(res&&res.rt&&res.rt.length==1){
       if(res.rt.lay_checked){
           res.rt.LAY_CHECKED = true ;
       }
    }else if(res&&res.rt&&res.rt.length>1){
        for(var t in res.rt){
            if(res.rt[t].lay_checked){
                res.rt[t].LAY_CHECKED = true ;
            }
        }
    }
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

ls.validata = ls.validata ||{} ;
/**
 * { checkedNodes:nodes, firstNode:nodes[0] }
 * @param zTreeHtmlElementId
 * @returns {{checkedNodes: *, firstNode: *}}
 */
ls.validata.ztreeSelected = function(zTreeHtmlElementId,isValidate){
    var treeObj = $.fn.zTree.getZTreeObj(zTreeHtmlElementId);
    // var nodes = treeObj.getCheckedNodes(true);
    var nodes = treeObj.getSelectedNodes(true);
    if(isValidate){
        if(nodes==null||nodes.length<=0){
            lk.ts.alert("请选择节点数据") ;
            lk.error.error("请选择节点数据") ;
        }
        return { checkedNodes:nodes, firstNode:nodes[0] }
    }else{
        return { checkedNodes:nodes, firstNode:{}}
    }

}


