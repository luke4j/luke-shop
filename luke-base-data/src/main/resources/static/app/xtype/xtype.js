//功能模块化代码定义
define(function(require) {
    require("ls");
    require("ztree");

    var Model = Backbone.Model.extend({
        defaults:{
             isSync:false,syncMethod:'add||update||del||get',syncDataType:"xtype||kind_extend||goods_cnf||goods_extend||len_cnf||len||goods_price"
            ,xtype:{id:'',fid:'',c_type:'',name:''}
            ,kind_extend:{id:'',typeKindId:'',blnEntity:'',blnLens:'',blnLib:'',blnLib:''}
            ,goods_cnf:{id:'',typeKindId:'',keyName:'',keyTitle:'',keyEleType:'',keyEleDefault:'',keyEleDefaultValues:''}
            ,goods_extend:{id:'',typeGoodsId:'',keyId:'',keyValue:''}
            ,len_cnf:{id:'',goods_id:'',minSph:'',maxSph:'',minCyl:'',maxCyl:'',sphStep:'',cylStep:''}
            ,len:{id:'',goods_id:'',cnfId:'',sph:'',cyl:''}
            ,goods_price:{id:'',goods_id:'',inPrice:'',outPrice:''}}
        ,initialize:function(){
            this.addEvent() ;
        }
        ,addEvent:function(){
            this.on('invalid',function(model,error){
                lk.ts.alert(error) ;
            }) ;
            this.on("loadRoot",this.loadRoot_handler) ;
            this.on("change:isSync",this.change_handler)
        }
        ,change_handler:function(model,name){
            if(this.get("isSync")){
                this[this.get("syncMethod")+'_'+this.get("syncDataType")]() ;
                this.set("isSync",false) ;
            }
        }
        ,add_xtype:function(){
            ls.d.ajax({
                url:'type/addType.act'
                ,data:this.get("formValues")
                ,success:function(res){
                    lk.ts.alert("保存成功") ;
                }
            }) ;
        }
        /**加载根节点数据，调用view的 pageTableData（param） 方法，让view去以树形式显示数据*/
        ,loadRoot_handler:function(args){
            ls.d.ajax({
                url:'type/findTypeByLevel.act'
                ,data:{id:0}
                ,success:function(res){
                    if(_.isArray(res.rt)){
                        var data = [] ;
                        for(var i in res.rt){
                            data.push($.extend(res.rt[i],{isParent:true}))
                        }
                        args.xtypeView.pageTableData(data) ;
                    }
                }
            }) ;
        }
        ,validate:function(attrs, options){
            if(attrs.isSync&&attrs.syncType=='xtype'&&attrs.syncMethod=='addModel'){
                if(_.isEmpty(this.xtype.fid)){
                    return "xtype.fid is Empty" ;
                }
                if(_.isEmpty(this.xtype.name)){
                    return "xtype.name is Empty" ;
                }
            }
        }
    }) ;


    //页面模型
    var View = Backbone.View.extend({
        //初始化
        initialize: function () {
            this.render();
        }
        ,render:function(){
            this.$el = ls.p.getWorkSpaceBody();
            this.model = new Model();
            var $page_base_formation = ls.d.getHtml('app/xtype/xtype_base_formation.html') ;
            this.$el.append($page_base_formation) ;

            this.model.trigger('loadRoot',{xtypeView:this}) ;
        }
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
        ,click_btn_xinzeng_handler:function() {
            var me = this;
            var checkedNodes = ls.validata.ztreeSelected("page_ul_ztree", false);
            var checkedTreeTableData = checkedNodes.checkedNodes;
            var xtype = "品类", fid = 0;
            if (!checkedTreeTableData[0]) {
                xtype = "品类";
                fid = 0;
            } else {
                switch (checkedTreeTableData[0].c_type) {
                    case '品类' :
                        xtype = "品牌";
                        fid = checkedTreeTableData[0].id;
                        break;
                    case '品牌' :
                        xtype = "型号";
                        fid = checkedTreeTableData[0].id;
                        break;
                    case '型号' :
                        xtype = "颜色";
                        fid = checkedTreeTableData[0].id;
                        break;
                }
            }
            me.model.set("syncMethod","add") ;
            me.model.set("syncDataType","xtype") ;
            lk.page.alertWindow({
                title:lk.static.BTN_TEXT_ADD_NEW
                ,htmlTemplateUrl:xtype == "品类"?'app/xtype/xtype.form.html':'app/xtype/xtype2.form.html'
                ,model:me.model
                ,defaultValue:{c_type:xtype,fid:fid}
            }) ;
        }
        ,pageTableData:function(params){
            var me = this;
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
            $.fn.zTree.init($("#page_ul_ztree"), setting, params);

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
    }) ;
    return View ;
}) ;