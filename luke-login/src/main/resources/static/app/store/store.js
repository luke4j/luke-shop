define(function(require) {
    require("ls");

    var M = Backbone.Model.extend({
        defaults: {
            id: '', name: '', addr: '', tel: '', adminId: '', c_type: '',isdo:'', fid: ''
        },
        find:function(data){
            ls.d.ajax({
                url:'',
                data:data,
                success:function(res){

                }
            })
        }
    }) ;

    var V = Backbone.View.extend({
        initialize: function () {
            /**tree table 组件触发事件  自定义事件*/
            // this.on("TreeTableRoleAddChild", this.TreeTableRoleAddChild_handler);
            this.render();
        },
        render: function () {
            var $wsBody = ls.p.getWorkSpaceBody() ;
            this.$el = $wsBody ;
            return this ;
        }
        ,events:{
            "click #btn-xinzeng":"click_btn_xinzeng_handler",
            "click #btn-shanchu":"click_btn_shanchu_handler",
            "click #btn-xuigai":"click_btn_xuigai_handler",
            "click #btn-chaxun":"click_btn_chaxun_handler"
        }

    }) ;

    return V ;


}) ;