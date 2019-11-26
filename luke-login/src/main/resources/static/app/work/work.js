define(function(require) {
    require("ls");
    require("js/b/json2") ;

    if(!layui.treetable){
        layui.config({
            base:'js/ui/layui/lay/modules/'
        }).extend({
            treetable: 'treetable'
        }) ;
    }

    /**用户数据模型*/
    var MCurrentUser = Backbone.Model.extend({
        defaults:{},
        loadCurrentUser:function(){
            var me = this ;
            ls.d.ajax({
                url:'login/getCurrentUser.act',
                success:function(resp){
                    resp.rt.systime = resp.more.systime ;
                    me.set(resp.rt) ;
                }
            }) ;
        }
    }) ;
    /**导航数据模型*/
    var MNav = Backbone.Model.extend({
        loadNav:function(){
            var me = this ;
            $.ajax({
                url:'app/work/nav.json?r='+Math.random(),
                success:function(resp){
                    me.set(resp) ;
                }
            })
        }
    }) ;
    /**菜单数据模型*/
    var MMenu = Backbone.Model.extend({
        loadMenu:function(){
            var me = this ;
            ls.d.ajax({
                url:'login/loadMenu.act',
                success:function(resp){
                    me.set(resp.rt) ;
                }
            })
        }
    }) ;

    /**测试区*/


    /**页面视图*/
    var VWork = Backbone.View.extend({
        initialize: function () {
            this.model_currentUser = new MCurrentUser();
            this.model_nav = new MNav() ;
            this.model_menu = new MMenu() ;

            this.listenTo(this.model_nav,"change",this.model_nav_change_handler) ;
            this.listenTo(this.model_currentUser, "change", this.model_currentUser_change_handler);
            this.listenTo(this.model_menu, "change", this.model_menu_change_handler);
            this.render();

            this.model_nav.loadNav() ;
        },
        render: function () {
            $("body").addClass("layui-layout-body");
            this.$el.addClass("layui-layout layui-layout-admin");
            this.$nav = $("<div>").addClass("layui-header");
            this.$menu = $("<div>").addClass("layui-side layui-bg-black");
            this.$menu.append($("<div>").addClass("layui-side-scroll").append($("<ul>").addClass("layui-nav layui-nav-tree")));
            this.$body = $("<div>").addClass("layui-body").attr("id","_workSpaceBody");
            this.$footer = $("<div>").addClass("layui-footer").text("@luke    ")
                .append("<a href:'tel:18613806246'>tel:18613806246</a>")
                .append("<a href='email:llg6yy@163.com'>     email:llg6yy@163.com</a>")
                 .append("<div style='float: left;margin-right: 20px;' id='sys_model_name'></div>");
            $("body").append(this.$el);
            this.$el.append(this.$nav).append(this.$menu).append(this.$body).append(this.$footer);
            this.$body.css({"margin-top":"8px","margin-left":"8px","margin-right":"8px","overflow-y":"hidden"})

            // this.$body.empty().append(testTreeTable(this.$body)) ;

        },
        events:{
            "click a[luke-menu-a]":"click_a_menu_handler"
        },
        _tempNav:function(){
            var t = "<li class='layui-nav-item'> " +
                "<a href='javascript:;' js='<%= js %>' id='<%= id %>' luke-menu-a><%= text %></a> " +
                    "<%  if(child.length>0){ %> " +
                        "<dl class='layui-nav-child'> " +
                            "<% for(var c in child){ %> " +
                                "<dd><a js='<%= child[c].js %>' id='<%= child[c].id %>' luke-menu-a style='cursor:pointer;' child='<%= JSON.stringify(child[c].child) %>'> <%= child[c].text %> </a></dd> " +
                            "<% } %> " +
                        "</dl> " +
                    "<% } %> " +
                "</li>" ;
            return _.template(t) ;
        }(),
        _tempMenu:function(){
            var t = "<li class='layui-nav-item'> " +
                        "<a href='javascript:;' js='<%= js %>' id='<%= id %>' luke-menu-a><%= name %></a> " +
                        "<%  if(child.length>0){ %> " +
                            "<dl class='layui-nav-child'> " +
                                "<% for(var c in child){ %> " +
                                    "<dd><a js='<%= child[c].js %>' id='<%= child[c].id %>'  luke-menu-a style='cursor:pointer;' child='<%= JSON.stringify(child[c].child) %>' > <%= child[c].name %> </a></dd> " +
                                "<% } %> " +
                            "</dl> " +
                        "<% } %> " +
                    "</li>" ;
            return _.template(t) ;
        }(),
        model_nav_change_handler:function(model){
            var $l = $("<ul>").addClass("layui-nav layui-layout-left") ;
            var $r = $("<ul>").addClass("layui-nav layui-layout-right") ;
            var $logo = $("<div style=''>").addClass("layui-logo").text($("title").text()) ;

            $logo.css("line-height",'30px').append("<p id='sys_show_menu_text'>")

            this.$nav.append($logo).append($l).append($r) ;

            $l.append($(this._tempNav(model.get("ld_cygn")))) ;
            $l.append($(this._tempNav(model.get("ld_xtsj")))) ;
            $l.append($(this._tempNav(model.get("ld_dhyh")))) ;

            $r.append($(this._tempNav(model.get("rd_msg")))) ;
            $r.append($(this._tempNav(model.get("rd_yh")))) ;
            $r.append($(this._tempNav(model.get("rd_exit")))) ;

            this.model_currentUser.loadCurrentUser() ;
            this.model_menu.loadMenu() ;

        },

        model_currentUser_change_handler:function(model){
            var nsun = "登录名："+model.get("loginName")+"-- 姓名："+model.get("name")+"-- 站点名："+model.get("storeName")+"-- 角色名："+model.get("roleName") ;
            $("#nav_userName").text(nsun) ;

            var ltime = model.get("systime") ;
            $("#nav_systime").text(lk.num.dateToStr(2,new Date(ltime))) ;
            setInterval(function(){
                ltime+=1000 ;
                $("#nav_systime").text(lk.num.dateToStr(2,new Date(ltime))) ;
            },1000) ;


        },

        model_menu_change_handler:function(model){
            var me = this ,_m = model.attributes ;
            var $ul = $("ul",me.$menu) ,tmp,group = [];
            function addGroupChild(group,rt){
                $.each(rt,function(i,obj){
                    if(group.id == obj.fid){
                        obj.child = [] ;
                        group.child.push(obj) ;
                        addGroupChild(obj,rt) ;
                    }
                });
            }
            $.each(_m,function (i,obj) {
                if(obj.c_type=='group'){
                    obj.child = [] ;
                    group.push(obj) ;
                    addGroupChild(obj,_m) ;
                }
            }) ;
            $.each(group,function(i,obj){
                $ul.append(me._tempMenu(obj)) ;
            }) ;
            layui.use('element', function(){
                var element = layui.element;

            });
            this.delegateEvents(this.events) ;
        }
        ,_tmpBtnStr:function(_menus){
            /**在数据库中配置的功能，每一个配置会对应一个事件方法，要写全*/
            var btnStr = "<div class='layui-btn-group' id='item_btn'>" ;
            $.each(_menus,function(i,m){
                btnStr+="<button class='layui-btn' id='btn-"+m.py.toLowerCase()+"'>"+m.name+"</button>"
            }) ;
            btnStr+="</div>"

            return btnStr ;
        }
        /**菜单事件*/
        ,click_a_menu_handler:function(be){
            var me = this ;
            var $menu = $(be.currentTarget) ;
            var js = $menu.attr("js") ;
            if(!js) return false ;
            $("#sys_model_name").text($menu.text()) ;
            $("#sys_show_menu_text").text($menu.text()) ;
            require([js],function(VC){
                if(typeof (VC)=='function'){
                    me.$body.empty() ;
                    if(me.TempView){
                        me.TempView.undelegateEvents() ;
                    }
                    var argument = JSON.parse($menu.attr("child")||'[]') ;
                    console.dir(argument) ;
                    me.TempView = new VC({_menus:argument}) ;

                    var $body = ls.p.getWorkSpaceBody();
                    $body.prepend(me._tmpBtnStr(argument)) ;
                    me.TempView.delegateEvents(me.TempView.events) ;

                }else{
                    lk.ts.alert("正在建设中");
                }
            }) ;
        }
    }) ;

    new VWork() ;
}) ;