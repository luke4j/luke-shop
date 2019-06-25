require.config({
    urlArgs: 'js' + Math.random(),
    baseUrl: "/",
    map: {
        '*': {
            'css': 'js/b/css.min'
        }
    },
    paths: {
        jquery: 'js/b/jquery.min',
        underscore: 'js/b/underscore',
        backbone: 'js/b/backbone.min',
        layui: 'js/ui/layui/layui',
        md5: 'js/b/md5',
        json2: 'js/b/json2',
        jcookie: 'js/b/plugin/jquery.cookie'
        ,jform:'js/b/plugin/jquery.form'
        , lk: "js/lk"
        ,ls:'app/ls'
    },
    shim: {

        jcookie: {
            deps: ['jquery'],
            exports: 'jcookie'
        },
        jform:{
            deps:['jquery'],
            exports:'jform'
        },
        backbone:{
            deps:['underscore','jquery',''],
            exports:'backbone'
        },
        layui:{
            deps:['jquery','css!js/ui/layui/css/layui.css'],
            exports:'layui'
        },
        lk:{
            deps:['jquery','backbone','jform','jcookie','layui'],
            exports:'lk'
        },
        ls:{
            deps:['jquery','backbone','jform','jcookie','layui','lk'],
            exports:'ls'
        }
    }
});