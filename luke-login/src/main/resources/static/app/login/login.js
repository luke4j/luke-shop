define(function(require){
    require("css!/app/login/css/login.css") ;
    require("ls") ;
    require("/app/login/particles.js") ;
    require("md5") ;


    /**登录数据模型与登录方法*/
    var MLogin = Backbone.Model.extend({
        defaults:{
            loginName:'',
            loginPwd:'',
            rememberMe:false
        },
        initialize:function(){
            this.addEvent() ;
        },
        addEvent:function(){
            /**验证时触发的事件*/
            this.on("invalid",function(model, error){
                layui.use('layer', function(){
                    var layer = layui.layer;
                    layer.open({
                        title: '请认真填写！！！'
                        ,content: error
                    });
                });
            }) ;
        },
        /**验证方法*/
        validate: function(attrs, options) {
            if(_.isEmpty(attrs.loginName)){
                return "登录名不能为空" ;
            }
            if(attrs.loginName.length<4){
                return "登录名不合法" ;
            }
            if(_.isEmpty(attrs.loginPwd)){
                return "登录密码不能为空" ;
            }
            if(attrs.loginPwd.length!=32){
                return "登录密码不合法" ;
            }
        },
        /**登录访求*/
        login:function(){
            var me = this ;
            var pwd = me.attributes.loginPwd ;
            me.attributes.loginPwd = hex_md5(me.attributes.loginPwd) ;
            if(this.isValid()){
                ls.d.ajax({
                    url:'login/login.act',
                    data:this.attributes,
                    mb:true,
                    success:function(resp){
                        if(me.attributes.rememberMe){
                            ls.ck.setLoginData(me.attributes.loginName,pwd) ;
                        }else{
                            ls.ck.delLoginData() ;
                        }
                        ls.ck.setToken(resp.rt._token) ;
                        location.href = localhost ;
                    }
                }) ;
            }
        }
    }) ;

    var VLogin = Backbone.View.extend({
        initialize:function(){
            this.render() ;
        },
        render:function(){
            $("body").append($("<div>").attr("id","particles-js").css({"display":"flex","align-items": "center","justify-content": "center"})) ;
            var $form = ls.d.getHtml("app/login/login.form.html") ;
            $("body").append($form) ;
            particlesJS.load("particles-js","/app/login/particles.json") ;
            // $("#loginName").focus() ;
            this.$loginName = $("#loginName") ;
            this.$loginPwd = $("#loginPwd") ;
            this.$loginName.focus() ;
            if(this.model.attributes.rememberMe){
                var rm = ls.ck.getLoginData() ;
                this.$loginName.val(rm.loginName) ;
                this.$loginPwd.val(rm.loginPwd) ;
            }
            this.$el = $("#dv_login"),
            this.delegateEvents(this.events()) ;

           return this ;
        },
        /**页面事件*/
        events:function(){
            return{
                "click #btn_login":"btn_login_click_handler",//点击登录事件
                "click #dv_rememberMe":"dv_rememberMe_click_handler",//点击记住我事件
                "keypress #loginName":"loginName_keypress_handler",//密码窗回车事件
                "keypress #loginPwd":"loginPwd_keypress_handler"//密码窗回车事件
            } ;
        },

        loginPwd_keypress_handler:function(je){
            if(je.keyCode==13){
                this.btn_login_click_handler() ;
            }
        },
        loginName_keypress_handler:function(je){
            if(je.keyCode==13){
                $("#loginPwd").focus() ;
            }
        },
        dv_rememberMe_click_handler:function(je){
            var $pic = $("#picture") ;
            if($pic.attr("src")=="app/login/img/check.png"){
                $pic.attr("src","app/login/img/checked.png") ;
                this.model.set("rememberMe",true) ;
            }else{
                $pic.attr("src","app/login/img/check.png") ;
                this.model.set("rememberMe",false) ;
            }
        },
        btn_login_click_handler: function(je){
            this.model.set("loginName",this.$loginName.val()) ;
            this.model.set("loginPwd",this.$loginPwd.val()) ;
            this.model.login() ;
        }
    }) ;
    return  VLogin  ;
}) ;