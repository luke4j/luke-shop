define(function(require) {
    require("ls");

    if(!layui.treetable){
        layui.config({
            base:'js/ui/layui/lay/modules/'
        }).extend({
            treetable: 'treetable'
        }) ;
    }

    var MDev = Backbone.Model.extend({
        defaults:{},
        updateDate:function(){
            var me = this ;
            ls.d.ajax({
                url:'dev/updateItem.act',
                data:this.attributes,
                success:function(res){
                    me.set(res.rt) ;
                }
            }) ;
        }
    }) ;


    var VDev = Backbone.View.extend({
        initialize:function(){
            this.model_dev =  new MDev() ;
            /**tree table 组件触发事件  自定义事件*/
            this.on("TreeTableRoleDel",this.TreeTableRoleDel_handler) ;
            this.on("TreeTableRoleEdit",this.TreeTableRoleEdit_handler) ;
            this.on("TreeTableRoleAddChild",this.TreeTableRoleAddChild_handler) ;
            this.render() ;
        },
        render:function(){
            var $wsBody = ls.p.getWorkSpaceBody() ;
            this.$el = $wsBody ;
            this.$tabletree = $("<table id='treeTable_item' lay-filter='treeTable_item'>") ;
            this.treeTable() ;
            this.$el.append(this._tmpBtnInRow()) ;
            this.$el.append(this._tmpBtnStr()) ;

            this.$el.append(this.$tabletree) ;
            this.delegateEvents(this.events) ;
            return this ;
        }
        ,_tmpBtnInRow:function(){
            var templateBtnInRow = "<script type='text/html' id='oper-col'>\n" +
                "    <a class='layui-btn layui-btn-primary layui-btn-xs' lay-event='TreeTableRoleEdit'>修改</a>\n" +
                "    <a class='layui-btn layui-btn-danger layui-btn-xs' lay-event='TreeTableRoleDel'>删除</a>\n" +
                "    <a class='layui-btn layui-btn-primary layui-btn-xs' lay-event='TreeTableRoleAddChild'>添加子项</a>\n" +
                "</script>" ;
           return templateBtnInRow ;
        }
        ,_tmpBtnStr:function(){
            var btnStr = " <div class='layui-btn-group'>\n" +
                "        <button class='layui-btn' id='btn-add-item'>添加菜单组</button>\n" +
                "    </div>" ;
            return btnStr ;
        }
        ,events:{
            "click #btn-add-item":"click_btn_add_item_handler",
        }
        //其它组件事件
        ,TreeTableRoleDel_handler:function(data){
            console.dir(data) ;
        }
        ,click_btn_add_item_handler:function(e){
            this.treeTable() ;
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
                        treeSpid: 0,
                        treeIdName: 'id',
                        treePidName: 'fid',
                        treeDefaultClose: false,
                        treeLinkage: false,
                        elem: '#treeTable_item'
                        // ,parseData:function(res){
                        //     return {
                        //         "code": res.code, //解析接口状态
                        //         "msg": res.msg, //解析提示文本
                        //         "count": res.count, //解析数据长度
                        //         "data": res.rt //解析数据列表
                        //     }
                        // }
                        ,url: 'dev/findAllItems.act'
                        ,method:'post'
                        ,page: false,
                        cols: [[
                            {field: 'id', title: 'id'},
                            {field: 'name', title: '显示'},
                            {field: 'fid', title: '父节点id'},
                            {field: 'c_type', title: '类型'},
                            {field: 'js', title: 'js入口文件'},
                            {field: 'icon', title: '图标'},
                            {field: 'px', title: '排序'},
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
