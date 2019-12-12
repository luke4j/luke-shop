//功能模块化代码定义
define(function(require) {
    require("ls");
    require("ztree");

    var Model = Backbone.Model.extend({
        staticSyncMethod:'add||update||del||get'
        ,staticSyncDataType:"xtype||kind_extend||goods_cnf||goods_extend||len_cnf||len||goods_price"
        ,defaults:{
             isSync:false,syncMethod:this.staticSyncMethod,syncDataType:this.staticSyncDataType
            // ,xtype:{id:'',fid:'',c_type:'',name:''}
            // ,kind_extend:{id:'',typeKindId:'',blnEntity:'',blnLens:'',blnLib:'',blnLib:''}
            // ,goods_cnf:{id:'',typeKindId:'',keyName:'',keyTitle:'',keyEleType:'',keyEleDefault:'',keyEleDefaultValues:''}
            // ,goods_extend:{id:'',typeGoodsId:'',keyId:'',keyValue:''}
            // ,len_cnf:{id:'',goods_id:'',minSph:'',maxSph:'',minCyl:'',maxCyl:'',sphStep:'',cylStep:''}
            // ,len:{id:'',goods_id:'',cnfId:'',sph:'',cyl:''}
            // ,goods_price:{id:'',goods_id:'',inPrice:'',outPrice:''}
            }
        ,initialize:function(){
            this.addEvent() ;
        }
        ,bindView:function(view){
            this.bindViewExample = view ;
        }
        ,addEvent:function(){
            this.on('invalid',function(model,error){
                lk.ts.alert(error) ;
            }) ;
            this.on("loadRoot",this.loadRoot_handler) ;
            this.on("change:isSync",this.change_handler)
        }
        ,validate:function(attrs, options){
            if(!attrs.syncMethod||attrs.syncMethod==this.staticSyncMethod){
                this.set("isSync",false) ;
                return "请设置数据实例 syncMethod" ;
            }

            if(!attrs.syncDataType||attrs.syncDataType==this.staticSyncDataType){
                this.set("isSync",false) ;
                return "请设置数据实例 syncDataType" ;
            }

            if(attrs.isSync&&attrs.syncType=='xtype'&&attrs.syncMethod=='addModel'){
                if(_.isEmpty(this.xtype.fid)){
                    this.set("isSync",false) ;
                    return "xtype.fid is Empty" ;
                }
                if(_.isEmpty(this.xtype.name)){
                    this.set("isSync",false) ;
                    return "xtype.name is Empty" ;
                }
            }
        }
        /**加载根节点数据，调用view的 pageTableData（param） 方法，让view去以树形式显示数据*/
        ,loadRoot_handler:function(){
            var me = this ;
            ls.d.ajax({
                url:'type/findTypeByLevel.act'
                ,data:{id:0}
                ,success:function(res){
                    if(_.isArray(res.rt)){
                        var data = [] ;
                        for(var i in res.rt){
                            data.push($.extend(res.rt[i],{isParent:true}))
                        }
                        me.bindViewExample.pageTableData(data) ;
                    }
                }
            }) ;
        }
        ,change_handler:function(model,name){
            if(this.get("isSync")){
                if(this.isValid()){
                    try{
                        this[this.get("syncMethod")+'_'+this.get("syncDataType")]() ;
                    }catch (e) {
                        lk.ts.alert("xtype.js->model->change_handler 找不到方法"+this.get("syncMethod")+'_'+this.get("syncDataType")) ;
                    }finally {
                        this.set("isSync",false) ;
                    }
                }else{
                    lk.ts.alert(this.validationError);
                }
            }
        }
        ,add_xtype:function(){
            var me = this ;
            ls.d.ajax({
                url:'type/addType.act'
                ,data:this.get("formValues")
                ,success:function(res){
                    lk.ts.alert("保存成功") ;
                    if(me.get("formValues").c_type=='品类'){
                        me.trigger('loadRoot') ;
                    }else{
                        me.bindViewExample.refreshNode() ;
                    }

                }
            }) ;
        }
        ,update_xtype:function(){
            var me = this ;
            ls.d.ajax({
                url:'type/updateType.act'
                ,data:this.get("formValues")
                ,success:function(res){
                    lk.ts.alert("修改成功") ;
                    if(me.get("formValues").c_type=='品类'){
                        me.trigger('loadRoot') ;
                    }else{
                        me.bindViewExample.refreshNode() ;
                    }

                }
            }) ;
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
            this.model.bindView(this) ;
            var $page_base_formation = ls.d.getHtml('app/xtype/xtype_base_formation.html') ;
            this.$el.append($page_base_formation) ;

            this.model.trigger('loadRoot') ;
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
            me.model.set("syncMethod","add") ;
            var xtype = "品类", fid = 0 ,htmlTemplateUrl;
            if (!checkedTreeTableData[0]) {
                xtype = "品类";
                fid = 0;
                me.model.set("syncDataType","xtype") ;
                htmlTemplateUrl = "app/xtype/xtype.form.html" ;
            } else {
                switch (checkedTreeTableData[0].c_type) {
                    case '品类' :
                        xtype = "品牌";
                        break;
                    case '品牌' :
                        xtype = "型号";
                        break;
                    case '型号' :
                        xtype = "颜色";
                        break;
                    case '颜色' :
                        xtype = "商品";
                        break;
                }
                fid = checkedTreeTableData[0].id;
                me.model.set("syncDataType","xtype") ;
                htmlTemplateUrl = "app/xtype/xtype2.form.html" ;
            }


            lk.page.alertWindow({
                title:lk.static.BTN_TEXT_ADD_NEW+"--"+(checkedTreeTableData[0]?checkedTreeTableData[0].name:"")
                ,htmlTemplateUrl:htmlTemplateUrl
                ,model:me.model
                ,defaultValue:{c_type:xtype,fid:fid}
            }) ;
        }
        ,click_btn_shuaxin_handler:function(){
            this.model.trigger('loadRoot') ;
        }
        ,click_btn_xiugai_handler:function(){
            var me = this;
            var checkedNodes = ls.validata.ztreeSelected("page_ul_ztree", false);
            var checkedTreeTableData = checkedNodes.checkedNodes;
            me.model.set("syncMethod","update") ;
            me.model.set("syncDataType","xtype") ;
            if(checkedTreeTableData.length==0){
                lk.ts.alert("请选择节点") ;
                return false ;
            }
            var selectData = checkedTreeTableData[0]
                ,htmlTemplateUrl="app/xtype/xtype.form.html";
            if(selectData.c_type!='品类'){
                htmlTemplateUrl="app/xtype/xtype2.form.html";
            }
            lk.page.alertWindow({
                title:lk.static.BTN_TEXT_UPDATE+"--"+selectData.name
                ,htmlTemplateUrl:htmlTemplateUrl
                ,model:me.model
                ,defaultValue:lk.b.ObjBlnToStr(selectData)
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
                // check: {
                //     enable: true
                //     ,chkStyle:"radio"
                // },
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
            $("#type_info").append($("<li>").text("商品："+(names[4]?names[4]:''))) ;
        }
        /**刷新选定节点*/
        ,refreshNode:function(){
            var zTree = $.fn.zTree.getZTreeObj("page_ul_ztree"),
                // type = e.data.type,
                // silent = e.data.silent,
                nodes = zTree.getSelectedNodes();
            // nodes = zTree.getCheckedNodes();
            if (nodes.length == 0) {
                alert("请先选择一个父节点");
            }
            for (var i=0, l=nodes.length; i<l; i++) {
                zTree.reAsyncChildNodes(nodes[i], "refresh", true);
                // if (!silent) zTree.selectNode(nodes[i]);
            }
        }
    }) ;
    return View ;
}) ;