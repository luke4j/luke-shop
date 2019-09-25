define(function (require) {
    require("ls");

    var Model = Backbone.Model.extend({
        defaults: {
            id: '', fid: '', xText: '', xValue: ''
        }
        , addModel: function (view) {
            ls.d.ajax({
                url:"systemValue/saveSystemValue.act",
                data:this.attributes
                ,success:function(res){
                    lk.ts.alert(res.msg) ;
                    view.pageSystemValueTreeTable() ;
                }
            }) ;
        }
        , delModel: function () {
            ls.d.ajax({
                url:"systemValue/delSystemValue.act",
                data:this.attributes
                ,success:function(res){
                    lk.ts.alert(res.msg) ;
                    view.pageSystemValueTreeTable() ;
                }
            }) ;
        }
        , updateModel: function () {
            ls.d.ajax({
                url:"systemValue/updateSystemValue.act",
                data:this.attributes
                ,success:function(res){
                    lk.ts.alert(res.msg) ;
                    view.pageSystemValueTreeTable() ;
                }
            }) ;
        }
    });

    var View = Backbone.View.extend({
        initialize: function () {
            this.render();
        }
        , render: function () {
            var $wsBody = ls.p.getWorkSpaceBody();
            this.$el = $wsBody;
            this.$divSystemValueTreeTable = $("<table id='divSystemValueTreeTable' lay-filter='divSystemValueTreeTable'>");
            this.$el.append(this.$divSystemValueTreeTable);
            this.pageSystemValueTreeTable();
        }
        /**页面显示系统变量的TreeTable数据*/
        , pageSystemValueTreeTable: function () {
            lk.page.pageTreeTable({
                id:'layuiSystemValueTreeTable'
                ,elem:'#divSystemValueTreeTable'
                ,url:'systemValue/findAll.act'
                ,cols:[[
                    {type: 'radio', width: "10%"},
                    {field: 'xText', title: '显示值', width: "30%"},
                    {field: 'id', title: 'ID', width: "30%"},
                    {field: 'xValue', title: '保存值', width: "30%"}
                ]]
            }) ;
        }
        /**页面事件注册*/
        , events: {
            "click #btn-xinzeng": "click_btn_xinzeng_handler"
            ,"click #btn-xiugai": "click_btn_xiugai_handler"
            ,"click #btn-shanchu": "click_btn_shanchu_handler"
            ,"click #btn-tianjiazixiang": "click_btn_tianjiazixiang_handler"
        }
        /**事件部分*/
        /*新增事件*/
        ,click_btn_xinzeng_handler:function(){
            this.alertLayuiForm('新增','addModel') ;
        }
        /*删除事件*/
        ,click_btn_shanchu_handler:function(){
            var checkedTreeTableData = layui.table.checkStatus('layuiSystemValueTreeTable') ;
            lk.exception.lenght(checkedTreeTableData.data.length,lk.static.CHECK_ONE) ;
            this.alertLayuiForm('删除','delModel',checkedTreeTableData.data[0]) ;
        }
        /*修改事件*/
        ,click_btn_xiugai_handler:function(){
            var checkedTreeTableData = layui.table.checkStatus('layuiSystemValueTreeTable') ;
            lk.exception.lenght(checkedTreeTableData.data.length,lk.static.CHECK_ONE) ;
            this.alertLayuiForm('修改','updateModel',checkedTreeTableData.data[0]) ;
        }
        /*添加子项*/
        ,click_btn_tianjiazixiang_handler:function(){
            var checkedTreeTableData = layui.table.checkStatus('layuiSystemValueTreeTable') ;
            lk.exception.lenght(checkedTreeTableData.data.length,lk.static.CHECK_ONE) ;
            this.alertLayuiForm('添加子项'+checkedTreeTableData.data[0].xText,'addModel',{fid:checkedTreeTableData.data[0].id}) ;
        }
        /**弹出窗部分*/
        ,alertLayuiForm:function(title,modelMethodName,data){
            lk.page.alertLayuiForm({
                title:title
                ,modelMethodName:modelMethodName
                ,data:data
                ,htmlTemplateUrl:"app/systemValue/systemValue.form.html"
                ,Model:Model
                ,view:this
            }) ;
        }
    });

    return View;
});