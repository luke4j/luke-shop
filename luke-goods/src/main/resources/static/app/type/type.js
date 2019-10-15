//功能模块化代码定义
define(function(require) {
    require("ls");

//数据模型
    var Model = Backbone.Model.extend({
        // 可以有默认值也可以没有，如果没有默认值 ，会按照form表单中的数据来定义数据模型的数据属性
        defaults: {
            c_type:'', name:'',fid:'',id:'',blnEntity:'',blnLens:'',blnLib:'',blnTime:''
        }
        //在数据模型中定义与后台交互的ajax方法
        , addModel: function (view) {
            ls.d.ajax({
                url: "type/addModel.act",
                data: this.attributes
                , success: function (res) {
                    lk.ts.alert(res.msg);
                    view.pageTableData();
                }
            });
        }
        , updateModel: function (view) {
            ls.d.ajax({
                url: "type/updateModel.act",
                data: this.attributes
                , success: function (res) {
                    lk.ts.alert(res.msg);
                    view.pageTableData();
                }
            });
        }
        , delModel: function (view) {
            ls.d.ajax({
                url: "type/delModel.act",
                data: this.attributes
                , success: function (res) {
                    lk.ts.alert(res.msg);
                    view.pageTableData();
                }
            });
        }
    });

    //页面模型
    var View = Backbone.View.extend({
        //初始化
        initialize: function () {
            this.render();
        }
        // 页面元素定义，包手html模板
        ,render: function () {
            //主工作区初始化
            this.$el = ls.p.getWorkSpaceBody() ;
            //添加数据表元素
            this.$tabletree = $("<table id='dataTreeTable' lay-filter='dataTreeTable'>") ;
            this.$el.append(this.$tabletree) ;
            this.$el.append(this._tmpCol_yesOrNo_lib()) ;
            this.$el.append(this._tmpCol_yesOrNo_entity()) ;
            this.$el.append(this._tmpCol_yesOrNo_lens()) ;
            this.$el.append(this._tmpCol_yesOrNo_time()) ;
            this.$el.append(this._tmpCol_type()) ;
            //使用UI组件来显示数据
            this.pageTableData() ;
            return this ;
        }
        //页面注册事件，这些按钮都是由数据库动态配置来的，id为btn-[名称的汉语拼音]
        ,events:{
            "click #btn-xinzeng":"click_btn_xinzeng_handler"
            ,"click #btn-shuaxin":"click_btn_shuaxin_handler"
            ,"click #btn-xiugai":"click_btn_xiugai_handler"
            ,"click #btn-shanchu":"click_btn_shanchu_handler"
            ,"click #btn-shuxingweihu":"click_btn_shuxingweihu_handler"
            ,"click #btn-zhedie":"click_btn_zhedie_handler"
            ,"click #btn-zhankai":"click_btn_zhankai_handler"
        }
        //事件所调用方法
        ,click_btn_zhedie_handler:function(){
            layui.use(['layer', 'table', 'treetable'], function () {
                var table = layui.table, layer = layui.layer, treetable = layui.treetable;
                treetable.foldAll("#dataTreeTable");
            }) ;
        }
        ,click_btn_zhankai_handler:function(){
            layui.use(['layer', 'table', 'treetable'], function () {
                var table = layui.table, layer = layui.layer, treetable = layui.treetable;
                treetable.expandAll("#dataTreeTable");
            }) ;
        }
        ,click_btn_xinzeng_handler:function(){
            var checkedTreeTableData = layui.table.checkStatus('uiDataTable') ;
            var xtype = "品类" ,fid=0;
            if(!checkedTreeTableData.data[0]){
                xtype = "品类" ;
                fid = 0 ;
            }else{
                switch (checkedTreeTableData.data[0].c_type) {
                    case '品类' :
                        xtype = "品牌" ;
                        fid = checkedTreeTableData.data[0].id ;
                        break ;
                    case '品牌' :
                        xtype = "型号" ;
                        fid = checkedTreeTableData.data[0].id ;
                        break ;
                    case '型号' :
                        xtype = "颜色" ;
                        fid = checkedTreeTableData.data[0].id ;
                        break ;
                }
            }
            this.alertLayerForm({
                title:lk.static.BTN_TEXT_ADD_NEW
                ,Model:Model
                ,modelMethodName:'addModel'
                ,data:{c_type:xtype,fid:fid}
                ,htmlTemplet:xtype == "品类"?'app/type/type.form.html':'app/type/type2.form.html'
            }) ;

            return false ;
        }
        ,click_btn_shuaxin_handler:function(){
            this.pageTableData() ;
        }
        ,click_btn_xiugai_handler:function(){
            var checkedTreeTableData = layui.table.checkStatus('uiDataTable') ;
            lk.exception.lenght(checkedTreeTableData.data.length,lk.static.CHECK_ONE) ;
            this.alertLayerForm({
                title:lk.static.BTN_TEXT_UPDATE
                ,Model:Model
                ,modelMethodName:'updateModel'
                ,data:checkedTreeTableData.data[0]
                ,htmlTemplet:checkedTreeTableData.data[0].c_type == "品类"?'app/type/type.form.html':'app/type/type2.form.html'
            }) ;
        }
        ,click_btn_shanchu_handler:function(){
            var checkedTreeTableData = layui.table.checkStatus('uiDataTable') ;
            lk.exception.lenght(checkedTreeTableData.data.length,lk.static.CHECK_ONE) ;
            this.alertLayerForm({
                title:lk.static.BTN_TEXT_DEL
                ,Model:Model
                ,modelMethodName:'delModel'
                ,data:checkedTreeTableData.data[0]
                ,htmlTemplet:checkedTreeTableData.data[0].c_type == "品类"?'app/type/type.form.html':'app/type/type2.form.html'
            }) ;
        }
        ,click_btn_shuxingweihu_handler:function(){
            var checkedTreeTableData = layui.table.checkStatus('uiDataTable') ;
            lk.exception.lenght(checkedTreeTableData.data.length,lk.static.CHECK_ONE) ;
            if(checkedTreeTableData.data[0].c_type != "品类"){
                lk.ts.alert("只有类型为[品类]的数据需要维护")
                return false ;
            }
            this.alertLayerForm({
                title:"品类{"+checkedTreeTableData.data[0].name+"}维护"
                ,Model:Model
                ,modelMethodName:'updateModel'
                ,data:checkedTreeTableData.data[0]
                ,htmlTemplet:checkedTreeTableData.data[0].c_type == "品类"?'app/type/type.form.html':'app/type/type2.form.html'
            }) ;
        }
        //页面显示表格数据
        /**
         *页面加载成功后，第一步就是加载默认数据，
         *这个方法可以显示查询结果
         */
        ,_tmpCol_yesOrNo_entity:function(){
            var template = "<script type='text/html' id='templateYesOrNo_entity'> " +
                "{{#  if(d.blnEntity==null){  }}"+
                "{{#   }else if(d.blnEntity){  }}"+
                "{{ '<font color=green>是</font>' }}"+
                "{{#  }else{  }}"+
                "{{  '<font color=red>否</font>'  }}"+
                "{{# } }}"
            "</script>" ;
            return template ;
        }
        ,_tmpCol_yesOrNo_time:function(){
            var template = "<script type='text/html' id='templateYesOrNo_time'> " +
                "{{#  if(d.blnTime==null){  }}"+
                "{{#   }else if(d.blnTime){  }}"+
                "{{ '<font color=green>是</font>' }}"+
                "{{#  }else{  }}"+
                "{{  '<font color=red>否</font>'  }}"+
                "{{# } }}"
            "</script>" ;
            return template ;
        }
        ,_tmpCol_yesOrNo_lens:function(){
            var template = "<script type='text/html' id='templateYesOrNo_lens'> " +
                "{{#  if(d.blnLens==null){  }}"+
                "{{#  }else if(d.blnLens){  }}"+
                "{{ '<font color=green>是</font>' }}"+
                "{{#  }else{  }}"+
                "{{  '<font color=red>否</font>'  }}"+
                "{{# } }}"
            "</script>" ;
            return template ;
        }
        ,_tmpCol_yesOrNo_lib:function(){
            var template = "<script type='text/html' id='templateYesOrNo_lib'> " +
                "{{#  if(d.blnLib==null){  }}"+
                "{{#  }else if(d.blnLib){  }}"+
                "{{ '<font color=green>是</font>' }}"+
                "{{#  }else{  }}"+
                "{{  '<font color=red>否</font>'  }}"+
                "{{# } }}"
            "</script>" ;
            return template ;
        }
        ,_tmpCol_type:function(){
            var template = "<script type='text/html' id='templateType'> " +
                "{{#  if(d.c_type==null){  }}"+
                "{{#  }else if(d.c_type=='品类'){  }}"+
                "{{ '<font color=green>品类</font>' }}"+
                "{{#  }else if(d.c_type=='品牌'){  }}"+
                "{{  '<font color=blue>品牌</font>'  }}"+
                "{{#  }else if(d.c_type=='型号'){  }}"+
                "{{  '<font color=#dc143c>型号</font>'  }}"+
                "{{#  }else if(d.c_type=='颜色'){  }}"+
                "{{  '<font color=#8b008b>颜色</font>'  }}"+
                "{{# } }}"
            "</script>" ;
            return template ;
        }
        ,pageTableData:function(params){
            lk.page.pageTreeTable({
                id:'uiDataTable'
                ,elem: '#dataTreeTable'
                ,url: 'type/findAll.act' //数据接口
                ,where:params
                ,cols: [[ //表头
                    {type:'radio', fixed: 'left'}
                    ,{field: 'id', title: 'ID',width:30, fixed: 'left'}
                    ,{field: 'c_type', title: '类型', fixed: 'left',templet:"#templateType"}
                    ,{field: 'name', title: '名称', fixed: 'left'}
                    ,{field: 'blnLens', title: '是否度数', fixed: 'left',templet:"#templateYesOrNo_lens"}
                    ,{field: 'blnLib', title: '是否库存', fixed: 'left',templet:"#templateYesOrNo_lib"}
                    ,{field: 'blnTime', title: '是否效期', fixed: 'left',templet:"#templateYesOrNo_time"}
                    ,{field: 'blnEntity', title: '是否服务', fixed: 'left',templet:"#templateYesOrNo_entity"}
                ]]
            },params) ;
        }
        //添加功能，增删改查的弹出窗模板
        /**
         * 页面功能按钮按下时，调用的弹出窗，包括渲染弹出窗与弹出窗的布局
         * lk.page.alertLayuiForm 这个方法会为弹出窗添相应的框架支持
         * 在点击确定后，会调用form表单中的数据，初始化数据模板Model,
         * 然后再调用Model中的指定方法来向后台发请求
         * 当然你也可以在Model的指定方法中回调视图View中的方法来刷新数据显示
         */
        ,alertLayerForm:function(args){
            var me = this ;
            lk.page.alertLayuiForm({
                title:args.title
                // ,area:"680px"
                ,modelMethodName:args.modelMethodName
                ,data:args.data
                ,htmlTemplateUrl:args.htmlTemplet
                ,Model:args.Model
                ,view:this
                ,success:function(){
                    layui.form.render();
                }
            }) ;
        }
    }) ;

    return View ;
});