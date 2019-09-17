define(function(require) {
    require("ls");

    var Model = Backbone.Model.extend({
        defaults: {
        }
        ,dgSetItems:function(checks,fid){
            var me = this ;
            for(var i in checks){
                if(checks[i].fid == fid){
                    if(me.attributes.itemIds){
                        me.set("itemIds",me.get("itemIds")+","+checks[i].id) ;
                    }else{
                        me.set("itemIds",checks[i].id) ;
                    }
                    me.dgSetItems(checks[i].children,checks[i].id) ;
                }
            }
        }
        ,setItems:function(){
            var checks = layui.tree.getChecked("treeTable_item") ;
            this.dgSetItems(checks,0) ;
        }
        , addModel: function (view) {
            this.setItems() ;
            ls.d.ajax({
                url:'role/addModel.act'
                ,data:this.attributes
                ,success:function(res){
                    lk.ts.alert(res.msg) ;
                    view.tableDates() ;
                }
            }) ;
        }
        , updateModel: function (view) {
            this.setItems() ;
            ls.d.ajax({
                url:'role/updateModel.act'
                ,data:this.attributes
                ,success:function(res){
                    lk.ts.alert(res.msg) ;
                    view.tableDates() ;
                }
            }) ;
        }
        ,delModel: function (view) {
            ls.d.ajax({
                url:'role/updateModel.act'
                ,data:this.attributes
                ,success:function(res){
                    lk.ts.alert(res.msg) ;
                    view.tableDates() ;
                }
            }) ;
        }

    });

    var View = Backbone.View.extend({
        initialize: function () {
            /**tree table 组件触发事件  自定义事件*/
            // this.on("TreeTableRoleDel",this.TreeTableRoleDel_handler) ;
            // this.on("TreeTableEdit",this.TreeTableEdit_handler) ;
            // this.on("TreeTableDel",this.TreeTableDel_handler) ;
            this.render();
        }
        , render: function () {
            var $wsBody = ls.p.getWorkSpaceBody();
            this.$el = $wsBody;
            this.$el.append("<table id='test'>")
            this.$el.append(this._tmpCol_items()) ;
            // /**页面主数据，角色数据表格*/
            this.$tabletree = $("<table id='treeTable_role' lay-filter='treeTable_role'>");
            this.$el.append(this.$tabletree);
            this.tableDates();
            return this;
        }
        ,events:{
            "click #btn-xinzeng":"click_btn_xinzeng_handler"
            ,"click #btn-chaxun":"click_btn_chaxun_handler"
            ,"click #btn-xiugai":"click_btn_xiugai_handler"
            ,"click #btn-shanchu":"click_btn_shanchu_handler"
        }
        /**
         * 页面新增事件
         * <br>弹出新增窗体
         * */
        ,click_btn_xinzeng_handler:function(){
            this.layerForm("addModel") ;
            return false ;
        }
        /**
         * 页面查询事件
         * <br>弹出查询条件窗体
         * */
        ,click_btn_chaxun_handler:function(){
            this.layerFindForm("findAll") ;
            return false ;
        }
        /**
         * 页面选择修改事件
         * <br>弹出修改窗体
         * */
        ,click_btn_xiugai_handler:function(){
            var checkeds = layui.table.checkStatus('treeTable_role') ;
            this.layerForm("updateModel",checkeds.data[0]) ;
            return false ;
        }
        /**
         * 页面选择删除事件
         * <br>弹出删除窗体
         * */
        ,click_btn_shanchu_handler:function(){
            this.layerFindForm("delModel") ;
            return false ;
        }

        ,layerFindForm:function(modelMethodName){
            var me = this ;
            if(!this.$findform) this.$findform = ls.d.getHtml("app/role/role.find.form.html") ;
            layui.use(['layer','form'], function() { //独立版的layer无需执行这一句
                var $ = layui.jquery, layer = layui.layer , form = layui.form; //独立版的layer无需执行这一句
                layer.open({
                    type: 1 //此处以iframe举例
                    ,title: '查询'
                    ,maxmin: true
                    ,area:"auto"
                    // ,area:['700px', '500px']
                    ,content:me.$findform[0].outerHTML
                    ,zIndex: layer.zIndex //重点1
                });
                form.on('submit(submit)', function(data){
                    var model = new Model(data.field) ;
                    model[modelMethodName](me) ;
                    return false ;
                }) ;
            });

        }
        ,layerForm:function(modelMethodName,data){
            var me = this ;
            if(!this.$form) this.$form = ls.d.getHtml("app/role/role.form.html") ;
            layui.use(['layer','form'], function() {
                var $ = layui.jquery, layer = layui.layer , form = layui.form;
                layer.open({
                    type: 1 //此处以iframe举例
                    ,title: '角色'
                    ,maxmin: true
                    // ,area:"auto"
                    ,area:['700px', '500px']
                    ,content:me.$form[0].outerHTML
                    ,zIndex: layer.zIndex //重点1
                    ,success: function($div){
                        // console.dir(layero) ;
                        //打开窗体成功后执行
                    }
                });
                form.on('submit(submit)', function(data){
                    var model = new Model(data.field) ;
                    model[modelMethodName](me) ;
                    return false ;
                }) ;
                if(data){
                    form.val("form",data) ;
                }
                me.showItemTree(data) ;

            });
        }
        ,showItemTree:function(data){
            function tree(treeData){
                layui.use(['tree', 'util'], function() {
                    var tree = layui.tree
                        , layer = layui.layer
                        , util = layui.util ;
                    tree.render({
                        elem: '#treeTable_item'
                        ,data: treeData
                        ,showCheckbox: true  //是否显示复选框
                        ,id: 'treeTable_item'
                    });

                }) ;
            } ;
            ls.d.ajax({
                url: 'role/findCheckedItems.act'
                ,async:true
                , data: {id: data ? data.id : ''}
                , success: function (resp) {
                    tree(resp.rt) ;
                }
            }) ;

        }
        ,_tmpCol_items:function(){
            var template = "<script type='text/html' id='_tmpCol_items'>\n" +
                // "{{# console.dir(d)}}" ;
                // "{{# console.dir(arguments)}}" ;
            "{{# if(d.items){ }}"+
            "{{# for(var i in d.items){  }}"+
            "{{ d.items[i].name+';'  }}"+
            "{{#     }  }}"+
            "{{# }  }}";

            "</script>" ;
            return template ;
        }

        /**页面主数据，角色数据表格*/
        ,tableDates:function(param){
            var me = this ;
            layui.use('table', function(){
                var table = layui.table;
                var colDefWidth = 80 ;
                table.render({
                    elem: '#treeTable_role'
                    ,height: 'full-170'
                    ,toolbar:true
                    // ,defaultToolbar: ['filter', 'print', 'exports']
                    ,url: 'role/findAll.act' //数据接口
                    ,where:param
                    ,method:'post'
                    ,page: true //开启分页
                    ,parseData:ls.d.tableDateParseData
                    ,cols: [[ //表头
                        {type:'radio'}
                        ,{field: 'id', title: 'ID',width:40}
                        ,{field: 'name', title: '角色名',width:100}
                        ,{field: 'items', title: '权限名',templet:"#_tmpCol_items"}
                    ]]
                });
                table.on("tool(treeTable_role)",function(obj){
                    var data = obj.data;
                    var layEvent = obj.event;
                    me.trigger(layEvent,[obj.data]) ;
                }) ;

            });
        }
        ,TreeTableEdit_handler:function(data){
            data = data[0] ;
            this.layerForm("updateModel",data) ;
            return false ;
        },
        TreeTableDel_handler:function(data){
            data = data[0] ;
            data._isDel = true ;
            this.layerForm("delModel",data) ;
            return false ;
        }
    });

    return View ;
}) ;