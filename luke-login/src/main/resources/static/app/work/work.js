define(function(require) {
    require("ls");
    require("md5");

    var MWork = Backbone.Model.extend({
        defaults:{},
        initialize:function(){
            this.addEvent() ;
        },
        addEvent:function(){
            this.on("change",function(model, options){
                console.dir(model) ;
            }) ;
        }
    }) ;

    var VWork = Backbone.View.extend({
        initialize:function(){
            this.render() ;
        },
        render:function(){
            this.$el.addClass("layui-layout layui-layout-admin") ;
            this.$el.appendTo($("body")) ;
            this.$dv_head = $("<div class='layui-header'>") ;
            this.$dv_menu_scroll = $("<div>").addClass("layui-side-scroll") ;
            this.$dv_menu = $("<div>").addClass("layui-side layui-bg-black").append(this.$dv_menu_scroll) ;
            this.$dv_body = $("<div>").addClass("layui-body layui-container").attr("id","dv_main_body") ;
            this.$dv_footer = $("<div>").addClass("layui-footer") ;
            this.$el.append(this.$dv_head).append(this.$dv_menu).append(this.$dv_body).append(this.$dv_footer)  ;

            this.addHead(this.$dv_head) ;
            this.addMenu() ;
            this.addBody() ;
            this.addfooter() ;
            this.getCurrentUser() ;
        },
        getCurrentUser:function(){
            var me = this ;
          ls.d.ajax({
              url:'login/getCurrentUser.act',
              success:function(resp){
                if(!me.model){
                    me.model = new MWork() ;
                    resp.rt.systime = resp.more.systime ;
                    me.model.set(resp.rt) ;
                }
              }
          })  ;
        },
        addHead:function($c){
            var $logo = $("<div>").addClass("layui-logo").text("E-Shop") ;
            $c.append($logo) ;
        },
        addMenu:function(){

        },
        addBody:function(){

        },
        addfooter:function(){
            // var $row = $("<div>").addClass("layui-row") ;
            // var $tel = $("<div>").addClass("layui-col-md6").append($("<a>").attr("href","tel:18613806246").text("电话")) ;
            // var $sms = $("<div>").addClass("layui-col-md6").append($("<a>").attr("href","sms:18613806246").text("短信")) ;
            // $row.append($tel).append($sms) ;
            // this.$dv_footer.css({"height":"88px"}) ;
            // this.$dv_footer.append($row) ;
            this.$dv_footer.append($("<h6>").text("© luke-shop")) ;
        }

    }) ;

    var Mul = Backbone.Model.extend({

    }) ;
    var Vul = Backbone.View.extend({
        tagName:"ul",
        initialize:function(){
            this.render() ;
        },
        tempLi:"<li class='layui-nav-item'>",
        tempDl:"<dl class='layui-nav-child'>",
        tempDd:"<dd><a></a></dd>",
        render:function(){
            this.$el.addClass(this.clazz) ;
            return this ;
        }
    }) ;

    new Vul({clazz:'',model:new Mul()}) ;

    new VWork() ;
});