define(function(require){
    require("css!/app/login/css/login.css") ;
    require("ls") ;
    require("/app/login/particles.js") ;


    /**登录数据模型与登录方法*/
    var MLogin = Backbone.Model.extend({
        defaults:{
            loginName:'',
            loginPwd:'',
            rememberMe:true
        },
        initialize:function(){
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
            if(this.attributes.rememberMe){
                ls.ck.setLoginData(this.attributes.loginName,this.attributes.loginPwd) ;
            }else{
                ls.ck.delLoginData() ;
            }

            this.attributes.loginPwd = hex_md5(this.attributes.loginPwd) ;
            if(this.isValid()){
                ls.d.ajax({
                    url:'login.act',
                    data:this.attributes,
                    success:function(resp){
                        console.dir(resp) ;
                        // ls.ck.setToken()
                    }
                }) ;
            }
        }
    }) ;

    var VLogin = Backbone.View.extend({
        $el: $("body"),
        initialize:function(){
            this.render() ;
        },
        render:function(){
            $("body").append($("<div>").attr("id","particles-js").css({"display":"flex","align-items": "center","justify-content": "center"})) ;
            var $form = ls.d.getHtml("app/login/login.form.html") ;
            $("body").append($form) ;

            particlesJS.load("particles-js","/app/login/particles.json") ;
           return this ;
        },
        /**页面事件*/
        events:function(){
            return{
                "click #btn_login":"btn_login_click_handler",//点击登录事件
                "click #dv_rememberMe":"dv_rememberMe_click_handler",//点击记住我事件
                "keypress #ipt_password":"ipt_password_keypress_handler",//密码窗回车事件
                "keypress #ipt_loginName":"ipt_password_keypress_handler"//密码窗回车事件
            } ;
        },
        ipt_password_keypress_handler:function(je){
            if(je.keyCode==13){
                $(je.currentTarget).blur() ;
                this.btn_login_click_handler() ;
            }
        },

        dv_rememberMe_click_handler:function(je){
            var $pic = $("#picture") ;
            if($pic.attr("src")=="img/check.png"){
                $pic.attr("src","app/login/img/checked.png") ;
                this.model.set("rememberMe",true) ;
            }else{
                $pic.attr("src","app/login/img/check.png") ;
                this.model.set("rememberMe",false) ;
            }
        },
        btn_login_click_handler:function(je){
            this.model.set("loginName",this.$loginName.val()) ;
            this.model.set("password",this.$password.val()) ;

            if(this.model.rememberMe){
                $.cookie("luke-loginName",this.$loginName.val(),{expires:1}) ;
                $.cookie("luke-password",this.$password.val(),{expires:1}) ;
            }

            this.model.login() ;
        }


    }) ;

    new VLogin(new MLogin()) ;


}) ;