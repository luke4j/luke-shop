//功能模块化代码定义
define(function(require) {
    require("ls");
    require("ztree") ;

    //数据模型
    var Model = Backbone.Model.extend({
        // 可以有默认值也可以没有，如果没有默认值 ，会按照form表单中的数据来定义数据模型的数据属性
        defaults: {
            c_type:'', name:'',fid:'',id:''
        }
        ,findXtypeRoot:function(){
            var data = [] ;
            ls.d.ajax({
                url:'type/findTypeByLevel.act'
                ,data:{id:0}
                ,async:false
                ,success:function(res){
                    if(_.isArray(res.rt)){
                        for(var i in res.rt){
                            data.push($.extend(res.rt[i],{isParent:true}))
                        }
                    }
                }
            }) ;
            return data ;
        }
        ,addNode:function(){
            ls.d.ajax({
                url:'type/addType.act'
                ,data:this.attributes
                ,success:function(res){
                    console.dir(res) ;
                }
            }) ;
        }

    });


    //页面模型
    var View = Backbone.View.extend({
        //初始化
        initialize: function () {
            this.render();
        }
        // 页面元素定义，包手html模板
        , render: function () {
            //主工作区初始化
            this.$el = ls.p.getWorkSpaceBody();
            this.model = new Model();
            this.$el.append(
                $("<div style='overflow:auto;margin-top: 8px;margin-left: 4px;'>").addClass("content_wrap ")
                    .append($("<div style='width:35%;height:550px;overflow-y: scroll;display:inline-block;'>").addClass("zTreeDemoBackground left")
                        .append($("<ul>").attr('id', "page_ztree_data").addClass("ztree"))
                    )
                    .append($("<div style='width:35%;height:550px;overflow-y: auto;display:inline-block;margin-left: 5px;'>").addClass("right")
                        .append($("<ul id='type_info' style='font-size: medium;margin-left: 5px;margin-top: 5px;'>").addClass("info")))
            );
            //使用UI组件来显示数据
            this.pageTableData();
            return this;
        }

        //页面显示表格数据
        ,pageTableData:function(params){
            var me = this;
            var zNodes = this.model.findXtypeRoot() ;
            var setting = {
                async: {
                    enable: true
                    ,url: 'type/findTypeByLevel.act'
                    ,autoParam: ["id","c_type"]
                    ,dataFilter:function(treeId, parentNode, responseData){
                        var data = responseData.rt ;
                        for(var i in data){
                            data[i].isParent = true ;
                        }
                        return data ;
                    }
                },
                check: {
                    enable: true
                    ,chkStyle:"radio"
                },
                data: {
                    simpleData: {
                        enable: true
                        ,idKey: "id"
                        ,pIdKey: "fid"
                        ,rootPId: 0
                    }
                },
                view: {
                    expandSpeed: ""
                }
                ,callback: {
                    onClick: me.zTreeOnClick_handler
                }
            };
            $.fn.zTree.init($("#page_ztree_data"), setting, zNodes);

        }
        /** ztree触发的事件 ***/
        ,zTreeOnClick_handler:function(event, treeId, treeNode){
            function generateNamePath(tree_node,ar){
                if(tree_node!=null){
                    ar.push(tree_node.name)
                    if(tree_node.getParentNode()!=null)
                        generateNamePath(tree_node.getParentNode(),ar) ;
                }
            }
            var names = [] ;
            generateNamePath(treeNode,names) ;
            names = lk.b.array_reverse(names) ;
            var name_path = '' ;
            for(var i = 0 ;i<=(names.length-1);i++){
                if(i==names.length-1){
                    name_path+=names[i] ;
                }else{
                    name_path+=names[i]+"->" ;
                }

            }
            $("#type_info").empty() ;
            $("#type_info").append($("<li>").text("详细信息")) ;
            $("#type_info").append($("<li>").text(name_path)) ;
            $("#type_info").append($("<li>").text("品类："+(names[0]?names[0]:''))) ;
            $("#type_info").append($("<li>").text("品牌："+(names[1]?names[1]:''))) ;
            $("#type_info").append($("<li>").text("型号："+(names[2]?names[2]:''))) ;
            $("#type_info").append($("<li>").text("颜色："+(names[3]?names[3]:''))) ;
        }
        //页面注册事件，这些按钮都是由数据库动态配置来的，id为btn-[名称的汉语拼音]
        , events: {
            "click #btn-xinzeng": "click_btn_xinzeng_handler" //新增
            , "click #btn-shuaxin": "click_btn_shuaxin_handler" //刷新
            , "click #btn-xiugai": "click_btn_xiugai_handler" //修改
            , "click #btn-shanchu": "click_btn_shanchu_handler" //删除
            , "click #btn-shuxingweihu": "click_btn_shuxingweihu_handler"//属性维护
            , "click #btn-zhedie": "click_btn_zhedie_handler"    //合并
            , "click #btn-zhankai": "click_btn_zhankai_handler"  //展开
            , "change #xtypeSelect": "change_xtypeSelect_handler" //选择品类
        }
        // ,click_btn_xinzeng_handler:function(jeve){
        //     var me = this ;
        //     var checkedNodes = ls.validata.ztreeSelected("page_ztree_data",false) ;
        //     // var model = new Model({id:checkedNodes.firstNode.id}) ;
        //     // model.addNode() ;
        //     this.alertLayerForm({
        //         title:lk.static.BTN_TEXT_ADD_NEW
        //         ,Model:Model
        //         ,modelMethodName:"addNode"
        //         ,view:me
        //         ,htmlTemplateUrl:'app/xtype/xtype.form.html'
        //     }) ;
        // }
        //添加功能，增删改查的弹出窗模板
        /**
         * 页面功能按钮按下时，调用的弹出窗，包括渲染弹出窗与弹出窗的布局
         * lk.page.alertLayuiForm 这个方法会为弹出窗添相应的框架支持
         * 在点击确定后，会调用form表单中的数据，初始化数据模板Model,
         * 然后再调用Model中的指定方法来向后台发请求
         * 当然你也可以在Model的指定方法中回调视图View中的方法来刷新数据显示
         */
        ,alertLayerForm:function(args){
            var me = this ;
            args.data.blnLens=""+args.data.blnLens ;
            args.data.blnLib=""+args.data.blnLib ;
            args.data.blnTime=""+ args.data.blnTime;
            args.data.blnEntity=""+ args.data.blnEntity;
            lk.page.alertLayuiForm($.extend({
                view:this
                ,success:function(){
                    layui.form.render();
                }
            },args)) ;
        }
    }) ;

    return View ;
});