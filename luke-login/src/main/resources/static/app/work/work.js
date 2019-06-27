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
        loadDate:function(){
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
            this.model.loadDate() ;
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
           require([jsurl],function(VC){
               if(typeof (VC)=='function'){
                   new VC() ;
               }
           }) ;
        },
        _tempLi:function(){
            var t = "<li class='layui-nav-item'> " +
                "<a href='javascript:;' jsurl='<%= jsurl %>' luke-menu-a><%= text %></a> " +
                "<%  if(child.length>0){ %> " +
                    "<dl class='layui-nav-child'> " +
                    "<% for(var c in child){ %> " +
                        "<dd><a jsurl='<%= child[c].jsurl %>' luke-menu-a> <%= child[c].text %> </a></dd> " +
                    "<% } %> " +
                    "</dl> " +
                "<% } %> " +
                "</li>" ;
             return _.template(t) ;
        }(),
        renderHead:function(){
            var $logo = $("<div>").addClass("layui-logo").text("Luke-E-Shop") ;
            var $l = $("<ul>").addClass("layui-nav layui-layout-left") ;

            // $l.append($(this._tempLi({text:'测试',jsurl:'',id:'test',child:[]}))) ;
            // $l.append($(this._tempLi({text:'测试2',jsurl:'',id:'test2',child:[{text:'功能1',jsurl:'1111',id:'gn1'}]}))) ;

            var $r = $("<ul>").addClass("layui-nav layui-layout-right") ;
            $r.append($(this._tempLi({id:'nav_exit',text:'退出',jsurl:'app/work/logout',child:[]}))) ;

            this.$head.append($logo).append($l).append($r) ;
        },
        renderMenu:function(){},
        renderBody:function(){},
        renderFooter:function(){
            this.$footer.append($("<h5>").text("© luke-eshp tel:18613806246")) ;
        }
    }) ;

    new VWork() ;

}) ;