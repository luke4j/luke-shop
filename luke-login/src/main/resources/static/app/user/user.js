define(function(require) {
    require("ls");

    var ModelUser = Backbone.Model.extend({
        defaults: {
            id: '', loginName: '', loginPwd: '', name: '', storeId: '', roleId: '', cwRoleId: '', birthday: '',
            sex: '', zw: '', tel: '', inTime: '', outTime: '', xl: '', zzmm: ''
        }
        ,addModel:function(view){
            if(this.get('isdo')=="") this.set("isdo",false) ;
            ls.d.ajax({
                url:"user/addModel.act",
                data:this.attributes
                ,success:function(res){
                    lk.ts.alert(res.msg) ;
                    view.pageUserTableData() ;
                }
            }) ;
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
            this.$el.append(this._tmpCol_birthday()) ;
            this.$el.append(this._tmpCol_inTime()) ;
            this.$tabletree = $("<table id='treeTable_users' lay-filter='treeTable_users'>") ;
            this.$el.append(this.$tabletree) ;
            this.pageUserTableData() ;
            return this ;
        }
        ,events:{
            "click #btn-xinzeng":"click_btn_xinzeng_handler",
            "click #btn-shuaxin":"click_btn_shuaxin_handler"
        }
        ,click_btn_xinzeng_handler:function(){
            this.alertUserLayerForm(lk.static.BTN_TEXT_ADD_NEW,'addModel') ;
            return false ;
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
        ,pageUserTableData:function(){
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
                    ,page: true
                    ,cols: [[ //表头
                        {type:'radio', fixed: 'left'}
                        ,{field: 'id', title: 'ID', fixed: 'left'}
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
                        ,{field: 'zzmm', title: '政治面貌', width: 100}
                    ]]
                });

            });
        }
        /**用户信息弹出窗*/
        ,alertUserLayerForm:function(title,modelMethodName,data){
            var me = this ;
            if(!this.$form) this.$form = ls.d.getHtml("app/user/user.form.html") ;
            layui.use(['layer','form','laydate','layedit'], function() {
                var $ = layui.jquery, layer = layui.layer , form = layui.form
                    ,laydate = layui.laydate ,layedit = layui.layedit ;
                layer.open({
                    type: 1
                    ,title: title
                    ,maxmin: true
                    ,area:"680px"
                    ,content:me.$form[0].outerHTML
                    ,zIndex: layer.zIndex
                    ,success: function(layero){
                        laydate.render({
                            elem: '#brithday'
                        });
                        laydate.render({
                            elem: '#inTime'
                        });
                        laydate.render({
                            elem: '#outTime'
                        }) ;
                        form.render();
                        $("#storeName").focus(me,me.alertStore) ;

                    }
                });
                form.on('submit(submit)', function(data){
                    var m = new ModelUser(data.field) ;
                    m[modelMethodName](me) ;
                    return false ;
                }) ;
                if(data){
                    form.val("form",data) ;
                }
            });
        }
        ,alertStore:function(){
            var me = this ;
            layer.open({
                type: 1
                ,title: "选择站点"
                ,maxmin: true
                ,area:"500px"
                ,content:"<table id='windowStore'></table>"
                ,zIndex: ++layer.zIndex
                ,offset: '100px'
                ,btn:['确定']
                ,btn1:function(){
                    alert(1) ;
                }
                ,success:function(){
                    layui.use(['layer', 'table', 'treetable'], function () {
                        table = layui.table;
                        layer = layui.layer;
                        treetable = layui.treetable;
                        var showTreeTable = function(){
                            layer.load(2);
                            treetable.render({
                                id:'windowStoreTree',
                                treeColIndex: 1,
                                // height: 'full-160',
                                treeSpid: 0,
                                treeIdName: 'id',
                                treePidName: 'fid',
                                treeDefaultClose: false,
                                treeLinkage: false,
                                elem: '#windowStore'
                                ,url: 'store/findAll.act'
                                ,method:'post'
                                ,page: false,
                                cols: [[
                                    {type:'radio'},
                                    {field: 'name', title: '名称',width:300},
                                    {field: 'c_type', title: '类型'}
                                ]],
                                done: function () {
                                    layer.closeAll('loading');
                                }
                            });
                            table.on("tool(treeTable_store)",function(obj){
                                var data = obj.data;
                                var layEvent = obj.event;
                                me.trigger(layEvent,[data]) ;
                            }) ;
                        } ;
                        showTreeTable() ;
                    }) ;


                }
            });
            layer.full() ;
        }
    }) ;


    return ViewUser ;
}) ;