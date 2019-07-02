define(function(require) {
    require("ls");

    var MDev = Backbone.Model.extend({
        defaults:{},
        updateDate:function(){
            console.dir(this) ;
            ls.d.ajax({
                url:'dev/updateItem.act',
                data:this.attributes,
                success:function(res){

                }
            }) ;
        }
    }) ;


    var VDev = Backbone.View.extend({
        initialize:function(){

            this._menus = arguments[0]._menus ;
            this.$table = $("<table>") ;
            this.$table.addClass("layui-hide").attr("id","dev_item_table").attr("lay-filter","dev_item_table") ;
            var $body = ls.p.getWorkSpaceBody() ;
            $body.append(this.$table) ;
            this.render() ;
        },
        toolbar:function(){
            var $tmp = $("<div>") ;
            var $tb = $("<div>").addClass("layui-btn-group") ;
            $tmp.append($tb) ;
            $.each(this._menus,function(i,m){
                $tb.append($("<div>").addClass("layui-btn").attr("luke-menu-btn",m.c_type+"_"+m.py).text(m.name))
            }) ;
            return $tmp ;
        }
        ,render:function(){
            var me = this ;
            layui.use('table', function(){
                var table = layui.table;
                table.render({
                    id:'id_table_menu'
                    ,elem: '#dev_item_table'
                    ,toolbar:me.toolbar().html()
                    // ,toolbar: 'default'
                    ,url:'dev/findAllItems.act'
                    // ,page: true //开启分页
                    ,method:'post'
                    ,height:'full-200'
                    ,parseData:function(res){
                        return {
                            "code": res.code, //解析接口状态
                            "msg": res.msg, //解析提示文本
                            "count": res.count, //解析数据长度
                            "data": res.rt //解析数据列表
                        }
                    }
                    ,cellMinWidth: 80 //全局定义常规单元格的最小宽度，layui 2.2.1 新增
                    ,cols: [[
                         {type:'radio'}
                        ,{field:'id', width:80, title: 'ID', sort: true}
                        ,{field:'name', title: '名称',edit: 'text'}
                        ,{field:'c_type', title: '类型',edit: 'text'}
                        ,{field:'js', width:80, title: 'js文件',edit: 'text', width: '30%', minWidth: 100}
                        ,{field:'px', width:80, title: '组内排序',edit: 'text', sort: true}
                        ,{field:'fid', width:80, title: '父ID',edit: 'text'}
                        ,{field:'icon', title: '图标CSS',edit: 'text'}
                    ]]
                });

                //监听单元格编辑
                table.on('edit(dev_item_table)', function(obj){
                    var value = obj.value //得到修改后的值
                        ,data = obj.data //得到所在行所有键值
                        ,field = obj.field; //得到字段
                    // layer.msg('[ID: '+ data.id +'] ' + field + ' 字段更改为：'+ value);
                    var model_update = new MDev(data) ;
                    model_update.updateDate() ;

                });
                //基本用不到了。。。
                //这个是配合 toolbar: 'default'
                // table.on('toolbar(dev_item_table)', function(obj){
                //     var checkStatus = table.checkStatus(obj.config.id);
                //     switch(obj.event){
                //         case 'add':
                //             layer.msg('添加');
                //             break;
                //         case 'delete':
                //             layer.msg('删除');
                //             break;
                //         case 'update':
                //             layer.msg('编辑');
                //             break;
                //     };
                // });
                $('[luke-menu-btn]').on('click', function(e){
                    // me.luke_menu_btn_handler.call(this,e,table) ;
                    me["luke_menu_"+$(e.currentTarget).attr("luke-menu-btn")+"_handler"].call(this,e,table) ;
                });

            });
        }

        ,luke_menu_btn_XinZeng_handler:function(e,table){
            // var checkStatus = table.checkStatus('id_table_menu')  ,data = checkStatus.data;
            // layer.alert(JSON.stringify(data));
            layui.use('layer', function() { //独立版的layer无需执行这一句
                var $ = layui.jquery, layer = layui.layer; //独立版的layer无需执行这一句
                layer.open({
                    type: 1 //此处以iframe举例
                    ,title: '新增菜单'
                    // ,area: ['390px', '260px']
                    ,maxmin: true
                    ,content: '//layer.layui.com/test/settop.html'
                    ,btn: ['继续弹出', '全部关闭'] //只是为了演示
                    ,yes: function(){
                        layer.alert("第一个按钮") ;
                    }
                    ,btn2: function(){
                        layer.closeAll();
                    }

                    ,zIndex: layer.zIndex //重点1
                    ,success: function(layero){
                        layer.setTop(layero); //重点2
                    }
                });
            }) ;
        }
    }) ;

    return VDev ;

}) ;
