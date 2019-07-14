define(function(require) {
    require("ls");

    var M = Backbone.Model.extend({
        defaults: {
            id: '', name: '', addr: '', tel: '', adminId: '', c_type: '',isdo:'', fid: ''
        }
        ,addForm:function(view){
            if(this.isdo=="") this.set("isdo",false) ;
            // lk.ts.alert("model addForm") ;
            ls.d.ajax({
                url:"store/addModel.act",
                data:this.attributes
                ,success:function(res){
                    view.treeTable() ;
                }
            }) ;
        }
        ,find:function(data){
            ls.d.ajax({
                url:'store/findAll.act',
                data:data,
                success:function(res){

                }
            })
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

            this.$el.append(this._tmpBtnInRow()) ;
            this.$el.append(this._tmpCol_isdo()) ;
            this.$el.append(this._tmpCol_cType()) ;
            this.$tabletree = $("<table id='treeTable_store' lay-filter='treeTable_store'>") ;
            this.$el.append(this.$tabletree) ;
            this.treeTable() ;

            return this ;
        }
        ,events:{
            "click #btn-xinzeng":"click_btn_xinzeng_handler",
            "click #btn-shanchu":"click_btn_shanchu_handler",
            "click #btn-xuigai":"click_btn_xuigai_handler",
            "click #btn-chaxun":"click_btn_chaxun_handler",
            "click #btn-shuaxin":"click_btn_shuaxin_handler"
        }
        ,click_btn_xinzeng_handler:function(e){
            this.layerForm("addForm") ;
            return false ;
        }
        ,click_btn_shuaxin_handler:function(e){
            this.treeTable() ;
        }
        /**数据表格中的功能模板*/
        ,_tmpBtnInRow:function(){
            var templateBtnInRow = "<script type='text/html' id='oper-col'>\n" +
                "    <a class='layui-btn layui-btn-primary layui-btn-xs' lay-event='TreeTableEdit'>修改</a>\n" +
                "    <a class='layui-btn layui-btn-danger layui-btn-xs' lay-event='TreeTableDel'>删除</a>\n" +
                "    <a class='layui-btn layui-btn-primary layui-btn-xs' lay-event='TreeTableAddChild'>添加子项</a>\n" +
                "</script>" ;
            return templateBtnInRow ;
        }
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
            layui.use(['layer','form'], function() { //独立版的layer无需执行这一句
                var $ = layui.jquery, layer = layui.layer , form = layui.form; //独立版的layer无需执行这一句
                layer.open({
                    type: 1 //此处以iframe举例
                    ,title: '新增菜单'
                    ,maxmin: true
                    ,area:"auto"
                    ,content:me.$form[0].outerHTML
                    ,zIndex: layer.zIndex //重点1
                    ,success: function(layero){
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
            var table ,layer,treetable ;
            layui.use(['layer', 'table', 'treetable'], function () {
                table = layui.table;
                layer = layui.layer;
                treetable = layui.treetable;
                var showTreeTable = function(){
                    layer.load(2);
                    treetable.render({
                        treeColIndex: 1,
                        height: 'full-160',
                        treeSpid: 0,
                        treeIdName: 'id',
                        treePidName: 'fid',
                        treeDefaultClose: false,
                        treeLinkage: false,
                        elem: '#treeTable_store'
                        ,url: 'store/findAll.act'
                        ,method:'post'
                        ,page: false,
                        cols: [[
                            {field: 'id', title: 'id',width:"4%"},
                            {field: 'name', title: '名称',width:"15%"},
                            {field: 'fid', title: '父节点id',width:"8%"},
                            {field: 'c_type', title: '类型',width:"10%"},
                            // {field: 'c_type', title: '类型',templet:"#_tmpCol_cType",width:"10%"},
                            {field: 'addr', title: '地址'},
                            {field: 'tel', title: '电话',width:"8%"},
                            {field: 'isdo', title: '是否可加工',templet:"#_tmpCol_isdo",width:"8%"},
                            {templet: '#oper-col', title: '操作'}
                        ]],
                        done: function () {
                            layer.closeAll('loading');
                        }
                    });
                    table.on("tool(treeTable_store)",function(obj){
                        var data = obj.data;
                        var layEvent = obj.event;
                        me.trigger(layEvent,[obj.data[0]]) ;
                    }) ;
                } ;
                showTreeTable() ;
            }) ;
        }
        //--------------------------其它组件触发事件------------------------------------
        ,TreeTableEdit_handler:function(data){

        }
        ,TreeTableDel_handler:function(data){

        }
        ,TreeTableAddChild_handler:function(data){

        }

    }) ;

    return V ;


}) ;