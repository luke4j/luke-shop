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
            this.$el.append(this._tmpBtnInRow()) ;
            this.$el.append(this._tmpCol_birthday()) ;
            this.$el.append(this._tmpCol_inTime()) ;
            this.$tabletree = $("<table id='treeTable_users' lay-filter='treeTable_users'>") ;
            this.$el.append(this.$tabletree) ;
            this.tableDates() ;
            return this ;
        }
        /**数据表格中的功能模板*/
        ,_tmpBtnInRow:function(){
            var templateBtnInRow = "<script type='text/html' id='oper-col'>\n" +
                "    <a class='layui-btn layui-btn-primary layui-btn-xs' lay-event='TreeTableEdit'>修改</a>\n" +
                "    <a class='layui-btn layui-btn-danger layui-btn-xs' lay-event='TreeTableDel'>删除</a>\n" +
                "</script>" ;
            return templateBtnInRow ;
        }
        ,_tmpCol_birthday:function(){
            var template = "<script type='text/html' id='_tmpCol_birthday'>\n" +
                // "{{# console.dir(d)}}" ;
                // "{{# console.dir(arguments)}}" ;
                "{{#  if(d.birthday){  }}"+
                "{{ lk.num.dateToStr(1,new Date(d.birthday))  }}"+
                "{{#  }else{  }}"+
                "<font>&nbsp;</fant>"+
                "{{# } }}"
            "</script>" ;
            return template ;
        }
        ,_tmpCol_inTime:function(){
            var template = "<script type='text/html' id='_tmpCol_inTime'>\n" +
                // "{{# console.dir(d)}}" ;
                // "{{# console.dir(arguments)}}" ;
                "{{#  if(d.inTime){  }}"+
                "{{ lk.num.dateToStr(1,new Date(d.inTime))  }}"+
                "{{#  }else{  }}"+
                "<font>&nbsp;</fant>"+
                "{{# } }}"
            "</script>" ;
            return template ;
        }
        ,tableDates:function(){
            layui.use('table', function(){
                var table = layui.table;
                var colDefWidth = 80 ;
                table.render({
                    elem: '#treeTable_users'
                    // ,height: 312
                    ,url: 'user/findAll.act' //数据接口
                    ,method:'post'
                    ,page: true //开启分页
                    ,parseData:ls.d.tableDateParseData
                    ,cols: [[ //表头
                        {field: 'id', title: 'ID', fixed: 'left'}
                        ,{field: 'loginName', title: '登录名', fixed: 'left'}
                        ,{field: 'name', title: '姓名', fixed: 'left'}
                        ,{field: 'store', title: '站点'}
                        ,{field: 'role', title: '角色'}
                        ,{field: 'cwRole', title: '财务角色', width: 100}
                        ,{field: 'birthday', title: '生日',templet:"#_tmpCol_birthday"}
                        ,{field: 'sex', title: '性别'}
                        ,{field: 'zw', title: '职务'}
                        ,{field: 'tel', title: '电话'}
                        ,{field: 'inTime', title: '入职时间',templet:"#_tmpCol_birthday"}
                        ,{field: 'xl', title: '学历'}
                        ,{field: 'zzmm', title: '政治面貌', width: 100},
                        {templet: '#oper-col', title: '操作'}
                    ]]
                });

            });
        }
    }) ;


    return ViewUser ;
}) ;