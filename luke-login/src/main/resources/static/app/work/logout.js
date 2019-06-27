define(function(require) {

    var VLogout = Backbone.View.extend({
        initialize: function () {
            this.render();
        },
        render: function () {
            lk.ts.confirm("是否退出",function(){
                ls.d.ajax({
                    url:'login/logout.act',
                    success:function(resp){
                        window.location.href = resp.rt.goto ;
                    }
                }) ;
            }) ;
            return this ;
        }
    }) ;
    return VLogout  ;



}) ;