define(function(require) {
    require("ls");

    var Model = Backbone.Model.extend({
        defaults: {
            id: '', name: '', itemIds: '',items:''
        }
        , addModel: function () {

        }
        , updateModel: function (view) {

        }
        , delModel: function (view) {

        }
    });

    var View = Backbone.View.extend({
        initialize: function () {
            this.render();
        }
        , render: function () {
            var $wsBody = ls.p.getWorkSpaceBody();
            this.$el = $wsBody;
            this.$tabletree = $("<table id='treeTable_role' lay-filter='treeTable_role'>");
            this.$el.append(this.$tabletree);
            this.tableDates();
            return this;
        }
        ,tableDates:function(){
            layui.use('table', function(){
                var table = layui.table;
                var colDefWidth = 80 ;
                table.render({
                    elem: '#treeTable_role'
                    // ,height: 312
                    ,url: 'user/findAll.act' //数据接口
                    ,method:'post'
                    ,page: true //开启分页
                    ,parseData:ls.d.tableDateParseData
                    ,cols: [[ //表头
                        {field: 'id', title: 'ID', fixed: 'left'}
                        ,{field: 'name', title: '角色名',}
                        ,{field: 'items', title: '权限名'}
                    ]]
                });

            });
        }
    });

    return View ;
}) ;