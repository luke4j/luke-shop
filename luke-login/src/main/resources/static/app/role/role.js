define(function(require) {
    require("ls");

    var Model = Backbone.Model.extend({
        defaults: {
        }
        , addModel: function (view) {
            var table = layui.table;
            var checks = table.checkStatus("treeTable_item") ;
            var ids = "" ;
            for(var i in checks.data){
                if(i==0){
                    ids+=checks.data[i].id ;
                }else{
                    ids+=","+checks.data[i].id ;
                }

            }
            this.set("itemIds",ids) ;
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

        }
        , delModel: function (view) {

        },
        findAll:function(view){
            view.tableDates(this.attributes)
        }
    });

    var View = Backbone.View.extend({
        initialize: function () {
            /**tree table 组件触发事件  自定义事件*/
            // this.on("TreeTableRoleDel",this.TreeTableRoleDel_handler) ;
            this.render();
        }
        , render: function () {
            var $wsBody = ls.p.getWorkSpaceBody();
            this.$el = $wsBody;
            this.$el.append(this._tmpCol_items()) ;
            this.$el.append(this._tmpBtnInRow()) ;
            this.$tabletree = $("<table id='treeTable_role' lay-filter='treeTable_role'>");
            this.$el.append(this.$tabletree);
            this.tableDates();
            return this;
        }
        ,events:{
            "click #btn-xinzeng":"click_btn_xinzeng_handler",
            "click #btn-chaxun":"click_btn_chaxun_handler"
        }
        ,click_btn_xinzeng_handler:function(){
            this.layerForm("addModel") ;
            return false ;
        }
        ,click_btn_chaxun_handler:function(){
            this.layerFindForm("findAll") ;
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
            layui.use(['layer','form'], function() { //独立版的layer无需执行这一句
                var $ = layui.jquery, layer = layui.layer , form = layui.form; //独立版的layer无需执行这一句
                layer.open({
                    type: 1 //此处以iframe举例
                    ,title: '新增角色'
                    ,maxmin: true
                    // ,area:"auto"
                    ,area:['700px', '500px']
                    ,content:me.$form[0].outerHTML
                    ,zIndex: layer.zIndex //重点1
                    ,success: function(layero){
                        // ls.d.setUserList($("select[name=adminId]"),form) ;
                        // form.render();
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
                if(modelMethodName=='addModel'){
                    me.showItemTree() ;
                }

            });
        }
        ,showItemTree:function(){
            var $divItemTree = $("div[itemTree]") ;
            var table ,layer,treetable ;
            layui.use(['layer', 'table', 'treetable'], function () {
                table = layui.table;
                layer = layui.layer;
                treetable = layui.treetable;
                var showTreeTable = function(){
                    layer.load(2);
                    treetable.render({
                        treeColIndex: 1,
                        height: '300',
                        treeSpid: 0,
                        treeIdName: 'id',
                        treePidName: 'fid',
                        treeDefaultClose: false,
                        treeLinkage: false,
                        elem: '#treeTable_item'
                        ,url: 'dev/findAllItems.act'
                        ,method:'post'
                        ,page: false,
                        cols: [[
                            {type:'checkbox'}
                            ,{field: 'name', title: '名称'}
                            ,{field: 'id', title: 'id'}
                        ]],
                        done: function () {
                            layer.closeAll('loading');
                        }
                    });
                } ;
                showTreeTable() ;
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
        /**数据表格中的功能模板*/
        ,_tmpBtnInRow:function(){
            var templateBtnInRow = "<script type='text/html' id='oper-col'>\n" +
                "    <a class='layui-btn layui-btn-primary layui-btn-xs' lay-event='TreeTableEdit'>修改</a>\n" +
                "    <a class='layui-btn layui-btn-danger layui-btn-xs' lay-event='TreeTableDel'>删除</a>\n" +
                "</script>" ;
            return templateBtnInRow ;
        }
        ,tableDates:function(param){
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
                        {field: 'id', title: 'ID', fixed: 'left',width:40}
                        ,{field: 'name', title: '角色名',width:100}
                        ,{field: 'items', title: '权限名',templet:"#_tmpCol_items"}
                        ,{templet: '#oper-col', title: '操作',width:120}
                    ]]
                });

            });
        }
    });

    return View ;
}) ;