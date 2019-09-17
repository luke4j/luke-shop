define(function(require) {
    require("ls");



    var MItem = Backbone.Model.extend({
        defaults:{
            id:'' ,name:'',c_type:'' ,js:'' ,icon:'' ,px:'',fid:''
        },
        saveItem:function(view){
            if(!this.get("fid")) this.set("fid",0) ;
            ls.d.ajax({
                url:'dev/addItem.act',
                data:this.attributes,
                success:function(res){
                    lk.ts.alert(res.msg) ;
                    view.treeTable() ;
                }
            }) ;
        },
        delItem:function(view){
            ls.d.ajax({
                url:'dev/delItem.act',
                data:this.attributes,
                success:function(res){
                    lk.ts.alert(res.msg) ;
                    view.treeTable() ;
                }
            }) ;
        },
        updateItem:function(view){
            ls.d.ajax({
                url:'dev/updateItem.act',
                data:this.attributes,
                success:function(res){
                    lk.ts.alert(res.msg) ;
                    view.treeTable() ;
                }
            }) ;
        },

    }) ;


    var VDev = Backbone.View.extend({
        initialize:function(){
            /**tree table 组件触发事件  自定义事件*/
            this.on("TreeTableRoleDel",this.TreeTableRoleDel_handler) ;
            this.on("TreeTableRoleEdit",this.TreeTableRoleEdit_handler) ;
            this.on("TreeTableRoleAddChild",this.TreeTableRoleAddChild_handler) ;
            this.render() ;
        },
        render:function(){
            var $wsBody = ls.p.getWorkSpaceBody() ;
            this.$el = $wsBody ;
            this.$el.append(this._tmpBtnInRow()) ;
            this.$tabletree = $("<table id='treeTable_item' lay-filter='treeTable_item'>") ;
            this.$el.append(this.$tabletree) ;
            this.treeTable() ;
            return this ;
        }
        /**数据表格中的功能模板*/
        ,_tmpBtnInRow:function(){
            var templateBtnInRow = "<script type='text/html' id='oper-col'>\n" +
                "    <a class='layui-btn layui-btn-primary layui-btn-xs' lay-event='TreeTableRoleEdit'>修改</a>\n" +
                "    <a class='layui-btn layui-btn-danger layui-btn-xs' lay-event='TreeTableRoleDel'>删除</a>\n" +
                "{{# if(d.c_type!='btn'){ }}"+
                "    <a class='layui-btn layui-btn-primary layui-btn-xs' lay-event='TreeTableRoleAddChild'>添加子项</a>\n" +
                "{{# } }}"+
                "</script>" ;
           return templateBtnInRow ;
        }
        ,events:{
            "click #btn-xinzeng":"click_btn_xinzeng_handler",
            "click #btn-shuaxin":"click_btn_shuaxin_handler"
        }
        //其它组件事件
        ,TreeTableRoleDel_handler:function(data){
            var d = {id:data[0].id} ;
            this.layerItem("delItem",data[0]) ;
        }
        ,TreeTableRoleAddChild_handler:function(data){
            var d = {fid:data[0].id} ;
            if(data[0].c_type=='btn'){
                lk.ts.alert("按键无法添加子项")　;
                return false ;
            }else if(data[0].c_type=='group'){
                d.c_type='menu'
            }else if(data[0].c_type=='menu'){
                d.c_type='btn'
            }else{
                lk.ts.alert("异常")　;
                return false ;
            }

            this.layerItem("saveItem",d) ;
        }
        ,TreeTableRoleEdit_handler:function(data){
            this.layerItem("updateItem",data[0]) ;
        }

        ,click_btn_xinzeng_handler:function(e){
            this.layerItem("saveItem",{
                fid:0
            }) ;
        }
        ,click_btn_shuaxin_handler:function(e){
            this.treeTable() ;
        }
        ,layerItem:function(modelMethodName,data){
            var me = this ;
            if(!this.$itemForm) this.$itemForm = ls.d.getHtml("app/dev/item.form.html") ;
            layui.use(['layer','form'], function() { //独立版的layer无需执行这一句
                var $ = layui.jquery, layer = layui.layer , form = layui.form; //独立版的layer无需执行这一句
                layer.open({
                    type: 1 //此处以iframe举例
                    ,title: '新增菜单'
                    ,maxmin: true
                    ,area:"auto"
                    ,content:me.$itemForm[0].outerHTML
                    ,zIndex: layer.zIndex //重点1
                    ,success: function(layero){
                        form.render();
                    }
                });
                form.on('submit(submit)', function(data){
                    var mitem = new MItem(data.field) ;
                    mitem[modelMethodName](me) ;
                    return false ;
                }) ;
                if(data){
                    form.val("item_form",data) ;
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
                        treeDefaultClose: true,
                        treeLinkage: false,
                        elem: '#treeTable_item'
                        ,url: 'dev/findAllItems.act'
                        ,method:'post'
                        ,page: false,
                        cols: [[
                            {field: 'id', title: 'id',width:"4%"},
                            {field: 'name', title: '名称',width:"15%"},
                            {field: 'fid', title: '父节点id',width:"8%"},
                            {field: 'c_type', title: '类型',width:"10%"},
                            {field: 'js', title: 'js入口文件'},
                            {field: 'icon', title: '图标',width:"8%"},
                            {field: 'px', title: '排序',width:"8%"},
                            {templet: '#oper-col', title: '操作'}
                        ]],
                        done: function () {
                            layer.closeAll('loading');
                        }
                    });
                    table.on("tool(treeTable_item)",function(obj){
                        var data = obj.data;
                        var layEvent = obj.event;
                        me.trigger(layEvent,[obj.data]) ;
                    }) ;
                } ;
                showTreeTable() ;
            }) ;
        }
    }) ;

    return VDev ;

}) ;
