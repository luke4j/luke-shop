//功能模块化代码定义
define(function(require) {
    require("ls");
    require("ztree");

    var Model = Backbone.Model.extend({
        defaults:{
             isSync:false,syncType:'xtype',syncMethod:''
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

        ,addModel:function(callback){
            // this.addType() ;
            // this.addKindExtend() ;
            // this.addGoodsCnf() ;
            // this.addGoodsExtend() ;
            // this.addLenCnf() ;
            // this.addLen() ;
            // this.addGoodsPrice() ;
            callback() ;
        }
        ,addType:function(){

        }
        ,updateModel:function(callback){
            // this.updateType() ;
            // this.updateKindExtend() ;
            // this.updateGoodsCnf() ;
            // this.updateGoodsExtend() ;
            // this.updateLenCnf() ;
            // this.updateLen() ;
            // this.updateGoodsPrice() ;
            callback() ;
        }
        ,delModel:function(callback){
            // this.delType() ;
            // this.delKindExtend() ;
            // this.delGoodsCnf() ;
            // this.delGoodsExtend() ;
            // this.delLenCnf() ;
            // this.delLen() ;
            // this.delGoodsPrice() ;
            callback() ;
        }
        ,getModel:function(callback){
            // this.getType() ;
            // this.getKindExtend() ;
            // this.getGoodsCnf() ;
            // this.getGoodsExtend() ;
            // this.getLenCnf() ;
            // this.getLen() ;
            // this.getGoodsPrice() ;
            callback() ;
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