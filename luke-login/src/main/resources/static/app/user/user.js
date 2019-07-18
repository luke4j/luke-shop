define(function(require) {
    require("ls");

    var ModelUser = Backbone.Model.extend({
        defaults: {
            id: '', loginName: '', loginPwd: '', name: '', storeId: '', roleId: '', cwRoleId: '', birthday: '',
            sex: '', zw: '', tel: '', inTime: '', outTime: '', xl: '', zzmm: ''
        }
        ,addModel:function(){

        }
        ,updateModel:function(view){

        }
        ,delModel:function(view){

        }
    }) ;

    var ViewUser = Backbone.View.extend({
        initialize: function () {
            this.render() ;
        }
        ,render: function () {
            var $wsBody = ls.p.getWorkSpaceBody() ;
            this.$el = $wsBody ;
            this.$tabletree = $("<table id='treeTable_users' lay-filter='treeTable_users'>") ;
            this.$el.append(this.$tabletree) ;
            this.tableDates() ;
            return this ;
        }
        ,tableDates:function(){
            layui.use('table', function(){
                var table = layui.table;
                table.render({
                    elem: '#treeTable_users'
                    ,height: 312
                    ,url: '/demo/table/user/' //数据接口
                    ,page: true //开启分页
                    ,cols: [[ //表头
                        {field: 'id', title: 'ID', width:80, sort: true, fixed: 'left'}
                        ,{field: 'loginName', title: '', width:80}
                        ,{field: 'name', title: '性别', width:80, sort: true}
                        ,{field: 'store', title: '城市', width:80}
                        ,{field: 'role', title: '签名', width: 177}
                        ,{field: 'cwRole', title: '积分', width: 80, sort: true}
                        ,{field: 'birthday', title: '评分', width: 80, sort: true}
                        ,{field: 'sex', title: '职业', width: 80}
                        ,{field: 'zw', title: '财富', width: 135, sort: true}
                        ,{field: 'tel', title: '财富', width: 135, sort: true}
                        ,{field: 'inTime', title: '财富', width: 135, sort: true}
                        ,{field: 'xl', title: '财富', width: 135, sort: true}
                        ,{field: 'zzmm', title: '', width: 135, sort: true}
                    ]]
                });

            });
        }
    }) ;


    return ViewUser ;
}) ;