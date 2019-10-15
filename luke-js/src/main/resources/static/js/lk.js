var lk = lk||{} ;

lk.static = {} ;
/**请选择一条数据*/
lk.static.CHECK_ONE = "请选择一条数据" ;
/**新增*/
lk.static.BTN_TEXT_ADD_NEW = "新增" ;
/**更新*/
lk.static.BTN_TEXT_UPDATE = "更新" ;
/**删除*/
lk.static.BTN_TEXT_DEL = "删除" ;
/**查询*/
lk.static.BTN_TEXT_FIND = "查询" ;
lk.static.PLEASE_CHECK_DATA="请选择数据" ;

lk.exception = {} ;
lk.exception.lenght = function(bln,msg){
    if(bln==0){
        lk.ts.alert(msg) ;
        throw new Error("长度为0-->:"+msg) ;
    }
} ;

//提示弹出窗方法组
lk.ts = {} ;
lk.ts.close = function(idx){
    if(idx){
        layer.close(idx)
    }else{
        layer.close(layer.index);
    }
} ;
/**
 * 文字提示
 * @param msg
 * @returns {boolean}
 */
lk.ts.alert = function(msg){
    var idx ;
    if(!layui){
        alert(msg) ;
        return false ;
    }
    layui.use("layer",function(){
        var layer = layui.layer ;
        if(typeof(msg)!="string"){
            layer.open({
                title: '异常'
                ,zIndex: layer.zIndex
                ,content: "参数不是字符，而是"+typeof(msg)
            });
            return false ;
        }
        idx = layer.open({
            title: '提示'
            //TODO 单独使用时,会出现BUG,待修改
            // zIndex:layer.zIndex++,
            ,zIndex: layer.zIndex
            ,content: msg
        });
    }) ;
    return idx ;
} ;
/**
 * 可以输入的提示窗，
 * @param msg
 * @param yesCallBack
 */
lk.ts.confirm = function(msg,yesCallBack){
    if(!layui){
        if(confirm(msg)){
            yesCallBack() ;
        }
    }
    layui.use("layer",function() {
        var layer = layui.layer;
        layer.confirm(msg, {icon: 3, title:'提示'}, function(index){
            yesCallBack() ;
            layer.close(index);
        });
    }) ;
} ;
//异常
lk.er = {} ;
lk.er.error = function(msg){
    throw new Error(msg) ;
} ;


//日志方法组
lk.lg = {} ;

lk.lg.dir = function(Obj){
    console.dir(Obj) ;
} ;

/**数字方法组*/
lk.num = {} ;
lk.num.moneyToChinese = function (Num) {    //阿拉伯数字转中文大写格式
    var isNegative = false;// 是否负数
    if (Num < 0) {
        Num = -Num;
        isNegative = true;
    }
    if (typeof Num == 'number') {
        Num = Num.toString();
    }
    for (var i = Num.length - 1; i >= 0; i--) {
        Num = Num.replace(",", "");// 替换money中的“,”
        Num = Num.replace(" ", "");// 替换money中的空格
    }
    Num = Num.replace("￥", "");// 替换掉可能出现的￥字符
    if (isNaN(Num)) { // 验证输入的字符是否为数字
        return;
    }
// ---字符处理完毕，开始转换，转换采用前后两部分分别转换---//
    part = String(Num).split(".");
    newchar = "";
// 小数点前进行转化
    for (var i = part[0].length - 1; i >= 0; i--) {
        if (part[0].length > 10) {
            alertWarning("位数过大，无法计算");
            return "";
        } // 若数量超过拾亿单位，提示
        tmpnewchar = "";
        perchar = part[0].charAt(i);
        switch (perchar) {
            case "0" :
                tmpnewchar = "零" + tmpnewchar;
                break;
            case "1" :
                tmpnewchar = "壹" + tmpnewchar;
                break;
            case "2" :
                tmpnewchar = "贰" + tmpnewchar;
                break;
            case "3" :
                tmpnewchar = "叁" + tmpnewchar;
                break;
            case "4" :
                tmpnewchar = "肆" + tmpnewchar;
                break;
            case "5" :
                tmpnewchar = "伍" + tmpnewchar;
                break;
            case "6" :
                tmpnewchar = "陆" + tmpnewchar;
                break;
            case "7" :
                tmpnewchar = "柒" + tmpnewchar;
                break;
            case "8" :
                tmpnewchar = "捌" + tmpnewchar;
                break;
            case "9" :
                tmpnewchar = "玖" + tmpnewchar;
                break;
        }
        switch (part[0].length - i - 1) {
            case 0 :
                tmpnewchar = tmpnewchar + "元";
                break;
            case 1 :
                if (perchar != 0)
                    tmpnewchar = tmpnewchar + "拾";
                break;
            case 2 :
                if (perchar != 0)
                    tmpnewchar = tmpnewchar + "佰";
                break;
            case 3 :
                if (perchar != 0)
                    tmpnewchar = tmpnewchar + "仟";
                break;
            case 4 :
                tmpnewchar = tmpnewchar + "万";
                break;
            case 5 :
                if (perchar != 0)
                    tmpnewchar = tmpnewchar + "拾";
                break;
            case 6 :
                if (perchar != 0)
                    tmpnewchar = tmpnewchar + "佰";
                break;
            case 7 :
                if (perchar != 0)
                    tmpnewchar = tmpnewchar + "仟";
                break;
            case 8 :
                tmpnewchar = tmpnewchar + "亿";
                break;
            case 9 :
                tmpnewchar = tmpnewchar + "拾";
                break;
        }
        newchar = tmpnewchar + newchar;
    }
// 小数点之后进行转化
    if (Num.indexOf(".") != -1) {
        if (part[1].length > 2) {
            alertWarning("小数点之后只能保留两位,系统将自动截段");
            part[1] = part[1].substr(0, 2);
        }
        for (var i = 0; i < part[1].length; i++) {
            tmpnewchar = "";
            perchar = part[1].charAt(i);
            switch (perchar) {
                case "0" :
                    tmpnewchar = "零" + tmpnewchar;
                    break;
                case "1" :
                    tmpnewchar = "壹" + tmpnewchar;
                    break;
                case "2" :
                    tmpnewchar = "贰" + tmpnewchar;
                    break;
                case "3" :
                    tmpnewchar = "叁" + tmpnewchar;
                    break;
                case "4" :
                    tmpnewchar = "肆" + tmpnewchar;
                    break;
                case "5" :
                    tmpnewchar = "伍" + tmpnewchar;
                    break;
                case "6" :
                    tmpnewchar = "陆" + tmpnewchar;
                    break;
                case "7" :
                    tmpnewchar = "柒" + tmpnewchar;
                    break;
                case "8" :
                    tmpnewchar = "捌" + tmpnewchar;
                    break;
                case "9" :
                    tmpnewchar = "玖" + tmpnewchar;
                    break;
            }
            if (i == 0)
                tmpnewchar = tmpnewchar + "角";
            if (i == 1)
                tmpnewchar = tmpnewchar + "分";
            newchar = newchar + tmpnewchar;
        }
    }
// 替换所有无用汉字
    while (newchar.search("零零") != -1)
        newchar = newchar.replace("零零", "零");
    newchar = newchar.replace("零亿", "亿");
    newchar = newchar.replace("亿万", "亿");
    newchar = newchar.replace("零万", "万");
    newchar = newchar.replace("零元", "元");
    newchar = newchar.replace("零角", "");
    newchar = newchar.replace("零分", "");

    if (newchar.charAt(newchar.length - 1) == "元" || newchar.charAt(newchar.length - 1) == "角") {
        newchar = newchar + "整";
    }

    if (isNegative) {
        newchar = '负' + newchar;
    }

    return "人民币"+newchar;
} ;

/**
 *format  1:yyyy-MM-dd ;2:yyyy-MM-dd HH:mm:ss ;
 * @param format
 * @param time
 * @returns {string}
 */
lk.num.dateToStr = function(format,time) {
    var now = time ? time : new Date();
    var year = now.getFullYear(); //得到年份
    var month = now.getMonth();//得到月份
    var date = now.getDate();//得到日期
    var day = now.getDay();//得到周几
    var hour = now.getHours();//得到小时
    var minu = now.getMinutes();//得到分钟
    var sec = now.getSeconds();//得到秒
    month = month + 1;
    if (month < 10) month = "0" + month;
    if (date < 10) date = "0" + date;
    if (hour < 10) hour = "0" + hour;
    if (minu < 10) minu = "0" + minu;
    if (sec < 10) sec = "0" + sec;
    var time = "";
    switch (day) {
        case 1:
            day = "一" ;break ;
        case 2:
            day = "二" ;break ;
        case 3:
            day = "三" ;break ;
        case 4:
            day = "四" ; break ;
        case 5:
            day = "五" ;break ;
        case 6:
            day = "六" ;break ;
        case 0:
            day = "日" ;break ;
    }
    //精确到天
    if (format == 1) {
        time = year + "-" + month + "-" + date;
    }
    //精确到分
    else if (format == 2) {
        time = year + "-" + month + "-" + date + " " + hour + ":" + minu + ":" + sec;
    }
    //精确到分
    else if (format == 3) {
        time = year + "-" + month + "-" + date + " " + hour + ":" + minu + ":" + sec+"  周"+day;
    }
    return time;
} ;

lk.num.uuid = function uuid() {
    var s = [];
    var hexDigits = "0123456789abcdef";
    for (var i = 0; i < 36; i++) {
        s[i] = hexDigits.substr(Math.floor(Math.random() * 0x10), 1);
    }
    s[14] = "4";  // bits 12-15 of the time_hi_and_version field to 0010
    s[19] = hexDigits.substr((s[19] & 0x3) | 0x8, 1);  // bits 6-7 of the clock_seq_hi_and_reserved to 01
    s[8] = s[13] = s[18] = s[23] = "-";

    var uuid = s.join("");
    return uuid;
} ;


/**系统共用的弹出窗*/
lk.window = {} ;
/**
 * 设置站点弹出窗
 * @param fnSetStoreVal 为回调函数 ，参数为选择的站点的名称与id
 */
lk.window.alertStore =  function(event){
    layui.use(['layer', 'table', 'treetable'], function () {
        var table = layui.table, layer = layui.layer, treetable = layui.treetable;
        var index = layer.open({
            type: 1
            , title: "选择站点"
            , maxmin: true
            , area: "500px"
            , content: "<table id='windowStore'></table>"
            , zIndex: ++layer.zIndex
            , offset: '100px'
            , btn: ['确定']
            , btn1: function () {
                if(typeof(event.data)=='function'){
                    var checkStatus = table.checkStatus('_layui_id_windowStoreTree');
                    var checkData = checkStatus.data ;
                    if(checkStatus.data.length==0){
                        lk.ts.alert(lk.static.PLEASE_CHECK_DATA) ;
                        return false ;
                    }
                    event.data(checkStatus.data[0].name, checkStatus.data[0].id);
                    /**关闭指定的弹出窗*/
                    layer.close(index);
                }
            }
            /**弹出成功后渲染元素，主要是加载数据*/
            ,success: function () {
                var showTreeTable = function () {
                    layer.load(2);
                    treetable.render({
                        id: '_layui_id_windowStoreTree',
                        treeColIndex: 1,
                        height: 'full-260',
                        treeSpid: 0,
                        treeIdName: 'id',
                        treePidName: 'fid',
                        treeDefaultClose: false,
                        treeLinkage: false,
                        elem: '#windowStore'
                        , url: 'store/findAll.act'
                        , method: 'post'
                        , page: false,
                        cols: [[
                            {type: 'radio'},
                            {field: 'name', title: '名称', width: 300},
                            {field: 'c_type', title: '类型'}
                        ]],
                        done: function () {
                            layer.closeAll('loading');
                        }
                    });
                };
                showTreeTable();
            }
        });
    }) ;
} ;

/**
 * 设置角色弹出窗
 * @param fnSetStoreVal 为回调函数 ，参数为选择的站点的名称与id
 */
lk.window.alertRole =  function(event){
    layui.use(['layer', 'table', 'treetable'], function () {
        var table = layui.table, layer = layui.layer, treetable = layui.treetable;
        var index = layer.open({
            type: 1
            , title: "选择角色"
            , maxmin: true
            , area: "500px"
            , content: "<table id='windowRole'></table>"
            , zIndex: ++layer.zIndex
            , offset: '100px'
            , btn: ['确定']
            , btn1: function () {
                if(typeof(event.data)=='function'){
                    var checkStatus = table.checkStatus('_layui_id_windowRole');
                    var checkData = checkStatus.data ;
                    if(checkStatus.data.length==0){
                        lk.ts.alert(lk.static.PLEASE_CHECK_DATA) ;
                        return false ;
                    }
                    event.data(checkStatus.data[0].name, checkStatus.data[0].id);
                    /**关闭指定的弹出窗*/
                    layer.close(index);
                }
            }
            /**弹出成功后渲染元素，主要是加载数据*/
            ,success: function () {
                var showTreeTable = function () {
                    layer.load(2);
                    layui.use('table', function(){
                        var table = layui.table;
                        var colDefWidth = 80 ;
                        table.render({
                            id:'_layui_id_windowRole'
                            ,elem: '#windowRole'
                            ,height: 'full-260'
                            // ,toolbar:true
                            // ,defaultToolbar: ['filter', 'print', 'exports']
                            ,url: 'role/findAll.act' //数据接口
                            // ,where:param
                            ,method:'post'
                            ,page: true //开启分页
                            ,parseData:ls.d.tableDateParseData
                            ,cols: [[ //表头
                                {type:'radio'}
                                ,{field: 'id', title: 'ID',width:'10%'}
                                ,{field: 'name', title: '角色名',width:'80%'}
                            ]],
                            done: function () {
                                layer.closeAll('loading');
                            }
                        });
                    });
                };
                showTreeTable();
            }
        });
    }) ;
} ;
/**
 * 设置财务角色弹出窗
 * @param fnSetStoreVal 为回调函数 ，参数为选择的站点的名称与id
 */
lk.window.alertCWRole =  function(event){
    layui.use(['layer', 'table', 'treetable'], function () {
        var table = layui.table, layer = layui.layer, treetable = layui.treetable;
        var index = layer.open({
            type: 1
            , title: "选择站点"
            , maxmin: true
            , area: "500px"
            , content: "<table id='windowStore'></table>"
            , zIndex: ++layer.zIndex
            , offset: '100px'
            , btn: ['确定']
            , btn1: function () {
                if(typeof(event.data)=='function'){
                    var checkStatus = table.checkStatus('_layui_id_windowStoreTree');
                    var checkData = checkStatus.data ;
                    if(checkStatus.data.length==0){
                        lk.ts.alert(lk.static.PLEASE_CHECK_DATA) ;
                        return false ;
                    }
                    event.data(checkStatus.data[0].name, checkStatus.data[0].id);
                    /**关闭指定的弹出窗*/
                    layer.close(index);
                }
            }
            /**弹出成功后渲染元素，主要是加载数据*/
            ,success: function () {
                var showTreeTable = function () {
                    layer.load(2);
                    treetable.render({
                        id: '_layui_id_windowStoreTree',
                        treeColIndex: 1,
                        height: 'full-260',
                        treeSpid: 0,
                        treeIdName: 'id',
                        treePidName: 'fid',
                        treeDefaultClose: false,
                        treeLinkage: false,
                        elem: '#windowStore'
                        , url: 'store/findAll.act'
                        , method: 'post'
                        , page: false,
                        cols: [[
                            {type: 'radio'},
                            {field: 'name', title: '名称', width: 300},
                            {field: 'c_type', title: '类型'}
                        ]],
                        done: function () {
                            layer.closeAll('loading');
                        }
                    });
                };
                showTreeTable();
            }
        });
    }) ;
} ;
/**
 * 设置系统变量
 * @param event.data {fid,callback}
 */
lk.window.alertSysVal =  function(event){
    var xType = event.data.param ;
    var setValue = event.data.setValue ;
    layui.use(['layer', 'table', 'treetable'], function () {
        var table = layui.table, layer = layui.layer, treetable = layui.treetable;
        var index = layer.open({
            type: 1
            , title: "选择"
            , maxmin: true
            , area: "500px"
            , content: "<table id='sysVal'></table>"
            , zIndex: ++layer.zIndex
            , offset: '100px'
            , btn: ['确定']
            , btn1: function () {
                if(typeof(setValue)=='function'){
                    var checkStatus = table.checkStatus('_layui_id_windowSysVal');
                    var checkData = checkStatus.data ;
                    if(checkStatus.data.length==0){
                        lk.ts.alert(lk.static.PLEASE_CHECK_DATA) ;
                        return false ;
                    }
                    // event.data(checkStatus.data[0].xText, checkStatus.data[0].xValue);
                    setValue(checkStatus.data[0].xText, checkStatus.data[0].xValue) ;
                    /**关闭指定的弹出窗*/
                    layer.close(index);
                }
            }
            /**弹出成功后渲染元素，主要是加载数据*/
            ,success: function () {
                var showTreeTable = function () {
                    layer.load(2);
                    table.render({
                        id:'_layui_id_windowSysVal'
                        ,elem: '#sysVal'
                        // ,height: 312
                        ,url: 'systemValue/find4Alert.act' //数据接口
                        ,method:'post'
                        ,where:{xText:xType} //开启分页
                        ,parseData:ls.d.tableDateParseData
                        ,cols:[[
                            {type: 'radio', width: "10%"},
                            {field: 'xText', title: '显示值', width: "90%"},
                        ]]
                        ,done: function () {
                            layer.closeAll('loading');
                        }
                    });



                };
                showTreeTable();
            }
        });
    }) ;
} ;

/**页面直接要显示的内容*/
lk.page = {} ;
/**
 * 页面中的TreeTable
 * treeTableCfg.id
 * treeTableCfg.elem
 * treeTableCfg.url
 * treeTableCfg.cols
 * @param treeTableCfg
 */
lk.page.pageTreeTable = function(treeTableCfg){
    var table, layer, treetable;
    layui.use(['layer', 'table', 'treetable'], function () {
        table = layui.table;
        layer = layui.layer;
        treetable = layui.treetable;
        var appendTreeTable = function () {
            layer.load(2);
            treetable.render($.extend({
                 treeColIndex: 1
                ,parseData:ls.d.tableDateParseData
                , height: 'full-160'
                , treeSpid: 0
                , treeIdName: 'id'
                , treePidName: 'fid'
                // , treeDefaultClose: true
                , treeLinkage: false
                , method: 'post'
                , page: false,
                done: function () {
                    layer.closeAll('loading');
                }
            },treeTableCfg));
        };
        appendTreeTable();
    });
} ;

lk.page.pageTable = function(cfg){
    layui.use('table', function(){
        var table = layui.table;
        table.render($.extend({
            url: 'user/findAll.act' //数据接口
            , method: 'post'
            , page: true //开启分页
            , parseData: ls.d.tableDateParseData
        },cfg));

    });
} ;


/**
 * 页面中的弹出的新增与修改的弹出窗，
 * 包括功能有
 *  弹出窗
 *  显示html模板元素
 *  使用 Model的modelMethodName提交数据
 *  使用 data 数据为表单负值
 * @param cfg
 * cfg.title,
 * cfg.modelMethodName,
 * cfg.data
 * cfg.Model
 * cfg.view
 * cfg.htmlTemplateUrl
 */
lk.page.alertLayuiForm = function(cfg){
    if(!cfg.htmlTemplateUrl||!cfg.modelMethodName||!cfg.Model||!cfg.view){
        lk.ts.alert("请注意弹出窗的必须参数") ;
        return false ;
    }
    // if(!cfg.view.$form) {
    //     cfg.view.$form = ls.d.getHtml(cfg.htmlTemplateUrl) ;
    // }
    cfg.view.$form = ls.d.getHtml(cfg.htmlTemplateUrl) ;
    layui.use(['layer','form','laydate','layedit'], function() {
        var $ = layui.jquery, layer = layui.layer, form = layui.form;
        layer.open($.extend({
              type: 1
            , title: '请注意弹出窗标题参数'
            , maxmin: true
            , area: "auto"
            , content: cfg.view.$form[0].outerHTML
            , zIndex: layer.zIndex //重点1
            , success: function (layero) {
                // form.render();
            }
        },cfg));
        /**提交事件，不同的业务，由事件决定modelMethodName，由model的方法来与后台交互*/
        form.on('submit(submit)', function (data) {
            var model = new cfg.Model(data.field);
            model[cfg.modelMethodName](cfg.view);
            return false;
        });
        if (cfg.data) {
            form.val("form", cfg.data);
        }
    }) ;
}




