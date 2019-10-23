define(function(require) {
    require("ls");

    var M = Backbone.Model.extend({
        defaults: {
            id: '', name: '', addr: '', tel: '', adminId: '', c_type: '',isdo:'', fid: ''
        }
        ,addModel:function(view){
            if(this.get('isdo')=="") this.set("isdo",false) ;
            ls.d.ajax({
                url:"store/addModel.act",
                data:this.attributes
                ,success:function(res){
                    lk.ts.alert(res.msg) ;
                    view.treeTable() ;
                }
            }) ;
        }
        ,updateModel:function(view){
            if(this.get('isdo')=="") this.set("isdo",false) ;
            ls.d.ajax({
                url:"store/updateModel.act",
                data:this.attributes
                ,success:function(res){
                    lk.ts.alert(res.msg) ;
                    view.treeTable() ;
                }
            }) ;
        }
        ,delModel:function(view){
            if(this.get('isdo')=="") this.set("isdo",false) ;
            ls.d.ajax({
                url:"store/delModel.act",
                data:this.attributes
                ,success:function(res){
                    lk.ts.alert(res.msg) ;
                    view.treeTable() ;
                }
            }) ;
        }
    }) ;

    var V = Backbone.View.extend({
        initialize: function () {
            /**tree table 组件触发事件  自定义事件*/
            this.on("TreeTableEdit", this.TreeTableEdit_handler);
            this.on("TreeTableDel", this.TreeTableDel_handler);
            this.on("TreeTableAddChild", this.TreeTableAddChild_handler);
            this.render();
        },
        render: function () {
            var $wsBody = ls.p.getWorkSpaceBody() ;
            this.$el = $wsBody ;

            this.$el.append(this._tmpCol_isdo()) ;
            this.$el.append(this._tmpCol_cType()) ;
            this.$tabletree = $("<table id='treeTable_store' lay-filter='treeTable_store'>") ;
            this.$el.append(this.$tabletree) ;
            this.treeTable() ;

            return this ;
        }
        ,events:{
            "click #btn-xinzeng":"click_btn_xinzeng_handler",
            "click #btn-xiugai":"click_btn_xiugai_handler",
            "click #btn-shanchu":"click_btn_shanchu_handler",
            "click #btn-tianjiazixiang":"click_btn_tianjiazixiang_handler",
            "click #btn-shuaxin":"click_btn_shuaxin_handler"
        }
        /**修改事件*/
        ,click_btn_xiugai_handler:function(){
            var checkedTreeTableData = layui.table.checkStatus('storeTreeTable') ;
            lk.exception.lenght(checkedTreeTableData.data.length,lk.static.CHECK_ONE) ;
            this.layerForm("updateModel",checkedTreeTableData.data[0]) ;
            $("input[name=fid]").removeAttr("disabled") ;
            return false ;

        }
        /**删除事件*/
        ,click_btn_shanchu_handler:function(){
            var checkedTreeTableData = layui.table.checkStatus('storeTreeTable') ;
            lk.exception.lenght(checkedTreeTableData.data.length,lk.static.CHECK_ONE) ;
            this.layerForm("delModel",checkedTreeTableData.data[0]) ;
            return false ;
        }
        /**新增事件*/
        ,click_btn_xinzeng_handler:function(e){
            this.layerForm("addModel",{fid:0}) ;
            return false ;
        }
        /**刷新事件*/
        ,click_btn_shuaxin_handler:function(e){
            this.treeTable() ;
        }
        /**添加子项事件*/
        ,click_btn_tianjiazixiang_handler:function(){
            var checkedTreeTableData = layui.table.checkStatus('storeTreeTable') ;
            lk.exception.lenght(checkedTreeTableData.data.length,lk.static.CHECK_ONE) ;
            this.layerForm("addModel",{fid:checkedTreeTableData.data[0].id}) ;
            return false ;
        }
        /**数据表格中的功能模板*/
        ,_tmpCol_isdo:function(){
            var template = "<script type='text/html' id='_tmpCol_isdo'>\n" +
                // "{{# console.dir(d)}}" ;
                "{{#  if(d.isdo){  }}"+
                    "<font color='red'>是</fant>"+
                "{{#  }else{  }}"+
                    "<font>否</fant>"+
                "{{# } }}"
                "</script>" ;
            return template ;
        }
        ,_tmpCol_cType:function(){
            var template = "<script type='text/html' id='_tmpCol_cType'>\n" +
                // "{{# console.dir(d)}}" ;
                "{{#  if(d.c_type=='直属'){  }}"+
                "<font color='red'>是</fant>"+
                "{{#  }else{  }}"+
                "<font>否</fant>"+
                "{{# } }}"
            "</script>" ;
            return template ;
        }
        ,layerForm:function(modelMethodName,data){
            var me = this ;
            if(!this.$form) this.$form = ls.d.getHtml("app/store/store.form.html") ;
            layui.use(['layer','form'], function() {
                var $ = layui.jquery, layer = layui.layer , form = layui.form;
                layer.open({
                    type: 1
                    ,title: '菜单'
                    ,maxmin: true
                    ,area:"auto"
                    ,content:me.$form[0].outerHTML
                    ,zIndex: layer.zIndex //重点1
                    ,success: function(layero){
                        ls.d.setUserList($("select[name=adminId]"),form) ;
                        form.render();
                    }
                });
                form.on('submit(submit)', function(data){
                    var m = new M(data.field) ;
                    m[modelMethodName](me) ;
                    return false ;
                }) ;
                if(data){
                    form.val("form",data) ;
                }
            });
        }
        ,treeTable:function(){
            var me = this ;
            lk.page.pageTreeTable({
                id: 'storeTreeTable'
                , elem: '#treeTable_store'
                , url: 'store/findAll.act'
                , cols: [[
                    {type: 'radio'},
                    {field: 'name', title: '名称', width: "15%"},
                    // {field: 'id', title: 'id',width:"4%"},
                    // {field: 'fid', title: '父节点id',width:"8%"},
                    {field: 'c_type', title: '类型', width: "10%"},
                    // {field: 'c_type', title: '类型',templet:"#_tmpCol_cType",width:"10%"},
                    {field: 'addr', title: '地址'},
                    {field: 'tel', title: '电话', width: "8%"},
                    {field: 'isdo', title: '是否可加工', templet: "#_tmpCol_isdo", width: "8%"}
                ]]
            });
            // var me = this ;
            // var table ,layer,treetable ;
            // layui.use(['layer', 'table', 'treetable'], function () {
            //     table = layui.table;
            //     layer = layui.layer;
            //     treetable = layui.treetable;
            //     var showTreeTable = function(){
            //         layer.load(2);
            //         treetable.render({
            //             id:'storeTreeTable',
            //             treeColIndex: 1,
            //             height: 'full-160',
            //             treeSpid: 0,
            //             treeIdName: 'id',
            //             treePidName: 'fid',
            //             treeDefaultClose: false,
            //             treeLinkage: false,
            //             elem: '#treeTable_store'
            //             ,url: 'store/findAll.act'
            //             ,method:'post'
            //             ,page: false,
            //             cols: [[
            //                 {type:'radio'},
            //                 {field: 'name', title: '名称',width:"15%"},
            //                 // {field: 'id', title: 'id',width:"4%"},
            //                 // {field: 'fid', title: '父节点id',width:"8%"},
            //                 {field: 'c_type', title: '类型',width:"10%"},
            //                 // {field: 'c_type', title: '类型',templet:"#_tmpCol_cType",width:"10%"},
            //                 {field: 'addr', title: '地址'},
            //                 {field: 'tel', title: '电话',width:"8%"},
            //                 {field: 'isdo', title: '是否可加工',templet:"#_tmpCol_isdo",width:"8%"}
            //             ]],
            //             done: function () {
            //                 layer.closeAll('loading');
            //             }
            //         });
            //         table.on("tool(treeTable_store)",function(obj){
            //             var data = obj.data;
            //             var layEvent = obj.event;
            //             me.trigger(layEvent,[data]) ;
            //         }) ;
            //     } ;
            //     showTreeTable() ;
            // }) ;
        }


    }) ;

    return V ;


}) ;