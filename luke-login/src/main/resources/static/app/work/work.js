define(function(require) {
    require("ls");

    /**
     cwIds: ""
     id: 1
     itemIds: ""
     loginName: "admin"
     loginPwd: "21232f297a57a5a743894a0e4a801fc3"
     name: "于洋"
     roleId: 0
     roleName: ""
     storeId: 0
     storeName: ""
     systime: 1561602959014
     _token: "token-b84b6d66aba8452180a8d6dd26e95a84"
     */
    var MWork = Backbone.Model.extend({
        defaults:{},
        initialize:function(){
            this.addEvent() ;
        },
        addEvent:function(){

        },
        getCurrentUser:function(){
            var me = this ;
            ls.d.ajax({
                url:'login/getCurrentUser.act',
                success:function(resp){
                    resp.rt.systime = resp.more.systime ;
                    me.set(resp.rt) ;
                    console.dir(me) ;
                }
            }) ;
        }
    }) ;

    var VWork = Backbone.View.extend({
        initialize: function () {
            this.model = new MWork();

            this.listenTo(this.model,"change",this.model_change_handler) ;

            this.model.getCurrentUser() ;
            this.render();
        },
        render: function () {
            $("body").addClass("layui-layout-body") ;
            this.$el.addClass("layui-layout layui-layout-admin") ;
            this.$head = $("<div>").addClass("layui-header") ;
            this.$menu = $("<div>").addClass("layui-side layui-bg-black") ;
            this.$body = $("<div>").addClass("layui-body") ;
            this.$footer = $("<div>").addClass("layui-footer") ;
            $("body").append(this.$el) ;
            this.$el.append(this.$head).append(this.$menu).append(this.$body).append(this.$footer)  ;
            this.renderHead() ;
            this.renderMenu() ;
            this.renderBody() ;
            this.renderFooter() ;

            layui.use('element', function(){
                var element = layui.element;

            });
            this.delegateEvents(this.events) ;
        },
        events:{
            "click a[luke-menu-a]":"click_a_menu_handler"
        },
        click_a_menu_handler:function(be){
           var $menu = $(be.currentTarget) ;
           var jsurl = $menu.attr("jsurl") ;
           if(!jsurl) return false ;
           require([jsurl],function(VC){
               if(typeof (VC)=='function'){
                   new VC() ;
               }
           }) ;
        },
        _tempNav:function(){
            var t = "<li class='layui-nav-item'> " +
                "<a href='javascript:;' jsurl='<%= jsurl %>' id='<%= id %>' luke-menu-a><%= text %></a> " +
                "<%  if(child.length>0){ %> " +
                    "<dl class='layui-nav-child'> " +
                    "<% for(var c in child){ %> " +
                        "<dd><a jsurl='<%= child[c].jsurl %>' id='<%= child[c].id %>' luke-menu-a> <%= child[c].text %> </a></dd> " +
                    "<% } %> " +
                    "</dl> " +
                "<% } %> " +
                "</li>" ;
             return _.template(t) ;
        }(),
        msg_data:_.extend({}, Backbone.Events),
        renderHead:function(){
            var me = this ;
            var ld_dhyh = {text:"导航用户名",jsurl:'',id:'nav_userName',child:[]} ;
            var ld_xtsj = {text:'系统时间',jsurl:'',id:'nav_systime',child:[]} ;
            var rd_yh = {id:'nav_user',text:'用户',jsurl:'',child:[{
                    id:'mav_updatePwd',text:'修改密码',jsurl:'',child:[]
                },{
                    id:'mav_info',text:'用户信息',jsurl:'',child:[]
                }]} ;
            var rd_msg = {text:'信息',id:'nav_msg',jsurl:'',child:[
                {text:'信息1',id:'msg_1',jsurl:'',child:[]},
                    {text:'信息2',id:'msg_1',jsurl:'',child:[]},
                    {text:'信息2',id:'msg_1',jsurl:'',child:[]},
                    {text:'信息3',id:'msg_1',jsurl:'',child:[]}
                    ]} ;

            var rd_exit = {id:'nav_exit',text:'退出',jsurl:'app/work/logout',child:[]} ;
            var $logo = $("<div>").addClass("layui-logo").text("Luke-E-Shop") ;

            var $l = $("<ul>").addClass("layui-nav layui-layout-left") ;
            $l.append($(this._tempNav(ld_dhyh))) ;
            $l.append($(this._tempNav(ld_xtsj))) ;

            var $r = $("<ul>").addClass("layui-nav layui-layout-right") ;
            $r.append($(this._tempNav(rd_msg))) ;
            $r.append($(this._tempNav(rd_yh))) ;
            $r.append($(this._tempNav(rd_exit))) ;

            this.listenTo(this.msg_data,"change",this.msg_data_change_handler) ;
            //后台取消息数据，这里设置消息数量
            // setInterval(function(){
            //     me.msg_data.data = rd_msg ;
            //     me.msg_data.trigger('change',me.msg_data) ;  ;
            // },500) ;

            this.$head.append($logo).append($l).append($r) ;
        },
        msg_data_change_handler:function(be){
            //<span class="layui-badge">99+</span>
            var hz = $("<span>").addClass("layui-badge").text(be.data.child.length) ;
            $("#nav_msg").append(hz) ;
            console.dir(be) ;
        },
        model_change_handler:function(model){
            var nsun = "登录名："+model.get("loginName")+"-- 姓名："+model.get("name")+"-- 站点名："+model.get("storeName")+"-- 角色名："+model.get("roleName") ;
            $("#nav_userName").text(nsun) ;
            var ltime = model.get("systime") ;
            $("#nav_systime").text(lk.num.dateToStr(2,new Date(ltime))) ;
            setInterval(function(){
                ltime+=1000 ;
                $("#nav_systime").text(lk.num.dateToStr(2,new Date(ltime))) ;
            },1000) ;
        },
        _tempMenu:function(){
            var t = "<li class='layui-nav-item'> " +
                "<a href='javascript:;' jsurl='<%= jsurl %>' id='<%= id %>' luke-menu-a><%= text %></a> " +
                "<%  if(child.length>0){ %> " +
                "<dl class='layui-nav-child'> " +
                "<% for(var c in child){ %> " +
                "<dd><a jsurl='<%= child[c].jsurl %>' id='<%= child[c].id %>' luke-menu-a> <%= child[c].text %> </a></dd> " +
                "<% } %> " +
                "</dl> " +
                "<% } %> " +
                "</li>" ;
            return _.template(t) ;
        }(),
        renderMenu:function(){

            this.$menu.append() ;
        },
        renderBody:function(){},
        renderFooter:function(){
            this.$footer.append($("<h5>").text("© luke-eshp tel:18613806246")) ;
        }
    }) ;

    new VWork() ;

}) ;