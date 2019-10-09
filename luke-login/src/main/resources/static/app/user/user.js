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
            ls.d.ajax({
                url:"user/updateModel.act",
                data:this.attributes
                ,success:function(res){
                    lk.ts.alert(res.msg) ;
                    view.pageUserTableData() ;
                }
            }) ;
        }
        ,delModel:function(view){
            ls.d.ajax({
                url:"user/delModel.act"
                ,data:{id:this.attributes.id}
                ,success:function(res){
                    lk.ts.alert(res.msg) ;
                    view.pageUserTableData() ;
                }
            }) ;
        }
        ,findModel:function(view){
            view.pageUserTableData(this.attributes) ;
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
            "click #btn-xinzeng":"click_btn_xinzeng_handler"
            ,"click #btn-xiugai":"click_btn_xiugai_handler"
            ,"click #btn-shanchu":"click_btn_shanchu_handler"
            ,"click #btn-chaxun":"click_btn_chaxun_handler"
        }
        /*新增事件*/
        ,click_btn_xinzeng_handler:function(){
            this.alertUserLayerForm(lk.static.BTN_TEXT_ADD_NEW,'addModel') ;
            return false ;
        }
        /*修改事件*/
        ,click_btn_xiugai_handler:function(){
            var checkedData = layui.table.checkStatus('userTableData') ;
            lk.exception.lenght(checkedData.data.length,lk.static.CHECK_ONE) ;
            this.alertUserLayerForm(lk.static.BTN_TEXT_UPDATE,'updateModel',checkedData.data[0]) ;
            return false ;
        }
        /*删除事件*/
        ,click_btn_shanchu_handler:function(){
            var checkedData = layui.table.checkStatus('userTableData') ;
            lk.exception.lenght(checkedData.data.length,lk.static.CHECK_ONE) ;
            this.alertUserLayerForm(lk.static.BTN_TEXT_DEL,'delModel',checkedData.data[0]) ;
            return false ;
        }
        /*查询事件*/
        ,click_btn_chaxun_handler:function(){
            this.alertUserLayerForm(lk.static.BTN_TEXT_FIND,'findModel') ;
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
        ,pageUserTableData:function(params){
            layui.use('table', function(){
                var table = layui.table;
                var colDefWidth = 80 ;
                table.render({
                    id:'userTableData'
                    ,elem: '#treeTable_users'
                    // ,height: 312
                    ,url: 'user/findAll.act' //数据接口
                    ,where:params
                    ,method:'post'
                    ,page: true //开启分页
                    ,parseData:ls.d.tableDateParseData
                    ,page: true
                    ,cols: [[ //表头
                        {type:'radio', fixed: 'left'}
                        ,{field: 'id', title: 'ID', fixed: 'left'}
                        ,{field: 'loginName', title: '登录名', fixed: 'left'}
                        ,{field: 'name', title: '姓名', fixed: 'left'}
                        ,{field: 'storeName', title: '站点'}
                        ,{field: 'roleName', title: '角色'}
                        ,{field: 'cwRoleName', title: '财务角色', width: 100}
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
        ,alertUserLayerFormAddHandler:function(){
            /**添加站点选择事件*/
            function setStoreVal(text,val){
                $("#storeName").val(text) ;
                $("#storeId").val(val) ;
            }
            $("#storeName").focus(setStoreVal,lk.window.alertStore) ;
            /**添加角色选择事件*/
            function setRoleVal(text,val){
                $("#roleName").val(text) ;
                $("#roleId").val(val) ;
            }
            $("#roleName").focus(setRoleVal,lk.window.alertRole) ;
            /**添加职务选择事件*/
            function setZWVal(text,val){
                $("#zw").val(text) ;
            }
            $("#zw").focus({setValue:setZWVal,param:'职务'},lk.window.alertSysVal) ;

            /**添加政治面貌选择事件*/
            function setZZMMVal(text,val){
                $("#zzmm").val(text) ;
            }
            $("#zzmm").focus({setValue:setZZMMVal,param:'政治面貌'},lk.window.alertSysVal) ;


            /**添加学历选择事件*/
            function setXLVal(text,val){
                $("#xl").val(text) ;
            }
            $("#xl").focus({setValue:setXLVal,param:'学历'},lk.window.alertSysVal) ;
        }
        /**用户信息弹出窗*/
        ,alertUserLayerForm:function(title,modelMethodName,data){
            var me = this ;
            lk.page.alertLayuiForm({
                title:title
                ,area:"680px"
                ,modelMethodName:modelMethodName
                ,data:data
                ,htmlTemplateUrl:"app/user/user.form.html"
                ,Model:ModelUser
                ,view:this
                ,success: function(layero){
                    /**渲染日期插件*/
                    layui.laydate.render({
                        elem: '#brithday'
                    });
                    layui.laydate.render({
                        elem: '#inTime'
                    });
                    layui.laydate.render({
                        elem: '#outTime'
                    }) ;
                    me.alertUserLayerFormAddHandler() ;
                    layui.form.render();
                }
            }) ;

        }

    }) ;


    return ViewUser ;
}) ;