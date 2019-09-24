[TOC]



# java

## maven 分包

程序分包，但不是分布式程序 

### luke-shop

pom.xml是父包，定义包函模块

### luke-app

pom.xml是程序的入口，定义了需要的包

### luke-tool

pom.xml 是工具类，VO类的基类，Model（Pojo）类的基类

### luke-md

pom.xml定交了VO类，Model(Pojo)类

### luke-js

pom.xml定义了需要的公用js文件，主要是js工具类文件 backbone,layui,jquery，require等

### luke-login

pom.xml 程序登录模块

#### 功能：



##### c1:IWelController:path=/

###### f1:默认页面

如果有token去检查token是否有效，有效直接登录成功，无效去登录

##### c2.ILoginController:path=login

###### f1.登入 :login.act

查询用户信息

登录名密码，用户基本信息，用户站点信息，用户权限信息，用户财务权限信息，并保存到redis中

返回功能登录token

###### f2.登出:logout.act

清除redis中的key=token的数据

###### f3.得到当前登录用户信息：getCurrentUser.act

以token得到redis中的VOutUser信息

返回VOutUser 



## spring boot 

### 程序入口

luke-app：app.java

```java
package com.luke.es;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cache.annotation.EnableCaching;

@SpringBootApplication
@EnableCaching
public class App {
    public static void main(String[] args) {
        SpringApplication.run(App.class,args) ;
    }
}

```

扫描com.luke.es包路径下面所有的类，以加载配置，pojo

@EnableCaching:启用缓存 

### 页面模板 thymeleaf

```html
<!DOCTYPE html>
<html lang="en"  xmlns:th="http://www.thymeleaf.org">
```

在页面添加 th 标签项

#### 在javascripte中使用

```html
<script th:inline="javascript">
        // var systime = [[${#dates.format(systime,'yyyy-MM-dd HH:mm:ss')}]] ;
        var systime  = [[${systime.time}]] ;
        var localhost = [[${localhost}]] ;
</script>
```

后台需要的代码

```java
import org.springframework.ui.Model;
...
/**在请求的方法中添加Model*/ 
public String welcome(HttpServletRequest request, Model model) throws Exception {
      model.addAttribute("systime",new Date()) ;
      String localhost = getLocalhostUrl(request) ;
      model.addAttribute("localhost",localhost) ;
      return model ;
 }
```

### Model(Pojo)

#### 基类

```java
//基类
import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;
@Inheritance(strategy = InheritanceType.TABLE_PER_CLASS)
@MappedSuperclass					//表示这是pojo类型，不生成表
public class _M implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    protected Long id ;

    @Column(nullable = false)
    private Boolean _isDel = false;

    @Column(nullable = false)
    private Date _wtime = new Date() ;
}
```

#### 索引

```java
import javax.persistence.Entity;
import javax.persistence.Index;
import javax.persistence.Table;
@Table(indexes = {
        @Index(columnList = "loginName",unique = true)
})
@Entity
public class TU_User extends _M {
}
```

### 业务层

#### ehcache

需要在程序的入口添加，这表示程序使用缓存 

```java
import org.springframework.cache.annotation.EnableCaching;
@SpringBootApplication
@EnableCaching
public class App {
    。。。。
}
```

@Cacheable

使用缓存标签

```java
@Cacheable(value = "staff",key = "#loginName+'_'+#password")
public U_Staff findStaffByNamePassword(String loginName, String password)
```

value = "staff" 是配置中的缓存策略

key = "#loginName+'_'+#password"  在缓存中查找缓存名称为 参数loginName_password的缓存记录，如果查询到有缓存 ，这个方法将不被执行，而直接从缓存中提取相应的数据 

@Cacheable

```javascript
@Cacheable(value = "staff",key = "#vo.id")
    public U_Staff getStaff(VOInUpdatePwd vo) throws AppException
```

手动清除缓存标签

value = "staff" 是配置中的缓存策略

key = "#vo.id" 是参数vo中的id属性值 ，在执行这个方法前，如果缓存中有对应的数据，就会被清除



<u>缓存这个东西好用，但是程序不清楚时，不应该用，否则程序数据与后台数据会出现不一至的现象</u>



# JPA

<u>jpa对于关联查询放宽了,不用在类中建关系就可以直接用left join 连接</u>



# js

## js

```javascript
setInterval(function(){    ltime+=1000 ;    $("#nav_systime").text(lk.num.dateToStr(2,new Date(ltime))) ;},1000) ;
```

## jquery

### jquery.form

```javascript
 $("#al_upload") .ajaxSubmit({
                type: 'post', // 提交方式 get/post
                url: '/fileUpload.act', // 需要提交的 url
                data: {
                    // 'type': $("#type").val(),
                    // 'img_file': $("#img_file").val()
                },
                success: function(data) {
                    if(data.success=='true'){

                        $("#img_al").attr("src","fileDownload.act?fileName="+data.file) ;
                    }else{
                        alert("上传失败") ;
                    }
                }
            }) ;
```

### 事件参数

```js

// 事件 参数
// 例 focus([[data],handler])
// 参数说明
data 可选参数/任意类型，触发事件时，可以通过event.data传递给事件处理函数的任意数据
handler 可选/Function类型 指定的事件处理函数
```



## Backbone

### 视图

```javascript
 var VLogin = Backbone.View.extend({
        initialize:function(){
            this.model = new MLogin() ;
            this.render() ;
        },
        render:function(){
           ...
            this.$el = $("#dv_login"),
               /*
               事件是可以自动添加的，条件是this.$el元素已经被加载完成，
               如果页面元素是动态加载的或生成的，就需要在元素加载（生成）到页面
               ,手动修改this.$el之后，再手动的注册事件
               */
            this.delegateEvents(this.events) ;
           return this ;
        },
        /**页面事件*/
        events:{
            "click #btn_login":"btn_login_click_handler",//点击登录事件
        },
        btn_login_click_handler: function(je){
            this.model.set("loginName",this.$loginName.val()) ;
            this.model.set("loginPwd",this.$loginPwd.val()) ;
            this.model.login() ;
        }
    }) ;
```



<u>视图中tagName属性是你需要操作的页面元素标签是什么，默认情况是div</u>

### 数据模型

```javascript
var MLogin = Backbone.Model.extend({
        defaults:{
            loginName:''
        },			//数据模型属性
        initialize:function(){
            this.addEvent() ;     //为数据模型添加事件
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
          
        },
        /**登录访求*/
        login:function(){
            var me = this ;
            if(this.isValid()){   //手动调用判断验证方法，会触发验证事件
                ls.d.ajax({
                    url:'login/login.act',
                    data:me.attributes,
                    success:function(resp){
                    }
                }) ;
            }
        }
    }) ;
```

<u>主要就是一些数据请求的方法最好写在数据模型当中，这样，这个数据模型在视图使数据时，可以很方便，更会使代码清楚</u>

## underscore

### 模板

这个模板就像是jsp一样，这里不多写，用java开发的人应该对jsp标签都有一定的认识。。。

还是写个例子吧，总会有些不一样的地方

1。写一个模板字符串  t

2。用underscore中的 var templateFun = _.template(t) 方法生成一个模板方法

3。 templateFun ({"":"","":""}) ; 调用这个生成的方法，设置模板所需要的数据（就是这个方法的参数），就会生成一个以模板为原型的html片段，这样就可以用在页面

```javascript
var VWork = Backbone.View.extend({
        initialize: function () {

            this.model = new MWork();
            this.model.loadDate() ;
            this.render();
        },
        render: function () {
           ....
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
      ...
    }) ;
```



## require

### 引入 

```html
<script type="application/javascript" data-main="app/app.js" src="js/b/require.min.js"></script>
<!-- data-main 属性是加载完require.js之后加载的require配置文件 -->
```

### 配置

```javascript
require.config({
    urlArgs: 'js=' + Math.random(),  //加载js时添加参数，可以免缓存
    baseUrl: "/",					//加载js时的根目录
    map: {							//设置加载css
        '*': {
            'css': 'js/b/css.min'
        }
    },
    paths: {		//定义文件与名字映射，这样在加载这些文件时就可以直接用名字，而不是路径
        jquery: 'js/b/jquery.min',
        underscore: 'js/b/underscore',
        backbone: 'js/b/backbone', //.min
        layui: 'js/ui/layui/layui',
        md5: 'js/b/md5',
        json2: 'js/b/json2',
        jcookie: 'js/b/plugin/jquery.cookie'
        ,jform:'js/b/plugin/jquery.form'
        , lk: "js/lk"
        ,ls:'app/ls'
    },
    shim: {					//设置文件依赖关系
        jcookie: {		     //jcookie 是jquery.cookie是名字，在加载jcookie时需要先加载jquery
            deps: ['jquery'],
            exports: 'jcookie'
        },
        ...
        layui:{				//加载一些页面框架时，需要css文件，这样来加载css文件依赖
            deps:['jquery','css!js/ui/layui/css/layui.css'],
            exports:'layui'
        },
        ...
});
```

### 入口代码

```javascript
//可以写在配置文件下面，也可以写在html页面中  
requirejs(['login/login'],function(V){
            if(typeof(V)=="function"){
                new V () ;
            }
        }) ;
```

### 视图

视图也就是入口代码中的参数V 参见   Backbone  部分

这个是以一种叫AMD的规范定义的 具体代码类似于

```javascript
define(function(require){
    ....
    return Object
}) ;
```

<u>这种定义方式最主要的作用就是，在加载完这个js文件之后，就会执行define方法，返回Object对象，这个Object对象是你自己定义的</u>

## layui



### 弹出窗 layer

```javascript
  layui.use(['layer'], function() { //独立版的layer无需执行这一句
                var $ = layui.jquery, layer = layui.layer; //独立版的layer无需执行这一句
                layer.open({
                    type: 1 //此处以iframe举例
                    ,title: '新增菜单'
                    // ,area: ['390px', '260px']
                    ,maxmin: true
                    ,content: '//layer.layui.com/test/settop.html'
                    ,btn: ['继续弹出', '全部关闭'] //只是为了演示
                    ,yes: function(){
                        layer.alert("第一个按钮") ;
                    }
                    ,btn2: function(){
                        layer.closeAll();
                    }
                    ,zIndex: layer.zIndex //重点1
                    ,success: function(layero){
                        layer.setTop(layero); //重点2
                    }
                });
            }) ;
```



### 表格数据 treetable

<u>数据格式</u>

```json
{
    "code": 0,
  	"msg": "ok",
    "data":[{
      "id": 1,
      "name": "xx",
      "sex": "male",
      "pid": -1
    },{}...]
    "count": 11
}
```

<u>代码</u>

```javascript
function testTreeTable ($body){

        var templateBtnInRow = "<script type='text/html' id='oper-col'>\n" +
            "    <a class='layui-btn layui-btn-primary layui-btn-xs' lay-event='edit'>修改</a>\n" +
            "    <a class='layui-btn layui-btn-danger layui-btn-xs' lay-event='del'>删除</a>\n" +
            "</script>" ;
        $body.append(templateBtnInRow) ;
        var btnStr = " <div class='layui-btn-group'>\n" +
            "        <button class='layui-btn' id='btn-expand'>全部展开</button>\n" +
            "        <button class='layui-btn' id='btn-fold'>全部折叠</button>\n" +
            "        <button class='layui-btn' id='btn-refresh'>刷新表格</button>\n" +
            "    </div>" ;
        $body.append(btnStr) ;
        $body.append("<table id='table1'lay-filter='table1'>") ;

        layui.config({
            // base: 'module/'
            base:'js/ui/layui/lay/modules/'
        }).extend({
            treetable: 'treetable'
        }).use(['layer', 'table', 'treetable'], function () {
            var $ = layui.jquery;
            var table = layui.table;
            var layer = layui.layer;
            var treetable = layui.treetable;

            // 渲染表格
            var renderTable = function () {
                layer.load(2);
                treetable.render({
                    treeColIndex: 1,
                    treeSpid: -1,
                    treeIdName: 'id',
                    treePidName: 'pid',
                    treeDefaultClose: false,
                    treeLinkage: false,
                    elem: '#table1',
                    url: 'app/dev/json/data.json',
                    page: false,
                    cols: [[
                        {type: 'numbers'},
                        {field: 'name', title: 'name'},
                        {field: 'id', title: 'id'},
                        {field: 'sex', title: 'sex'},
                        {field: 'pid', title: 'pid'},
                        {templet: '#oper-col', title: 'oper'}   //这里需要一个模板
                    ]],
                    done: function () {
                        layer.closeAll('loading');
                    }
                });
            };

            renderTable();

            $('#btn-expand').click(function () {
                treetable.expandAll('#table1');
            });

            $('#btn-fold').click(function () {
                treetable.foldAll('#table1');
            });

            $('#btn-refresh').click(function () {
                renderTable();
            });

            //监听工具条
            table.on('tool(table1)', function (obj) {
                var data = obj.data;
                var layEvent = obj.event;

                if (layEvent === 'del') {
                    layer.msg('删除' + data.id);
                } else if (layEvent === 'edit') {
                    layer.msg('修改' + data.id);
                }
            });



        }) ;
    } ;
```



### 模板  laytpl

```javascript
//第一步：编写模版。你可以使用一个script标签存放模板，如：
<script id="demo" type="text/html">
  <h3>{{ d.title }}</h3>
  <ul>
  {{#  layui.each(d.list, function(index, item){ }}
    <li>
      <span>{{ item.modname }}</span>
      <span>{{ item.alias }}：</span>
      <span>{{ item.site || '' }}</span>
    </li>
  {{#  }); }}
  {{#  if(d.list.length === 0){ }}
    无数据
  {{#  } }} 
  </ul>
</script>
 
//第二步：建立视图。用于呈现渲染结果。
<div id="view"></div>
 
//第三步：渲染模版
var data = { //数据
  "title":"Layui常用模块"
  ,"list":[{"modname":"弹层","alias":"layer","site":"layer.layui.com"},{"modname":"表单","alias":"form"}]
}
var getTpl = demo.innerHTML
,view = document.getElementById('view');
laytpl(getTpl).render(data, function(html){
  view.innerHTML = html;
});
```

模板中{{#  code...   }} 这里的代码是逻辑代码,不会显示

模板中{{  code...   }} 这里的代码是可以显示在页面的变量 

没有在{{  }}   中的代码是写死的显示在页面中的值

<u>使用时可以写测试 代码 ,用来查看运行时模板中的变量 </u>

```javascript
 // "{{# console.dir(d)}}" ;
 // "{{# console.dir(arguments)}}" ;
```





### 数据表格 table

```javascript
layui.use('table', function(){
                var table = layui.table;
                var colDefWidth = 80 ;
                table.render({
                    elem: '#treeTable_users'	//页面table元素ID
                    // ,height: 312
                    ,url: 'user/findAll.act' //数据接口
                    ,method:'post'
                    ,page: true //开启分页
                    ,parseData:ls.d.tableDateParseData  //自己的数据转成表格所需要的格式
                    ,cols: [[ //表头
                        {field: 'id', title: 'ID', fixed: 'left'}
                        ,{field: 'loginName', title: '登录名', fixed: 'left'}
                        ,{field: 'name', title: '姓名', fixed: 'left'}
                        ,{field: 'store', title: '站点'}
                        ,{field: 'role', title: '角色'}
                        ,{field: 'cwRole', title: '财务角色', width: 100}
                        ,{field: 'birthday', title: '生日',templet:"#_tmpCol_birthday"}
                        ,{field: 'sex', title: '性别'}
                        ,{field: 'zw', title: '职务'}
                        ,{field: 'tel', title: '电话'}
                        ,{field: 'inTime', title: '入职时间',templet:"#_tmpCol_birthday"}
                        ,{field: 'xl', title: '学历'}
                        ,{field: 'zzmm', title: '政治面貌', width: 100},
                        {templet: '#oper-col', title: '操作'}
                    ]]
                });

            });
```



```javascript
ls.d.tableDateParseData = function(res){
    return {
        "code": res.code, //解析接口状态
        "msg": res.msg, //解析提示文本
        "count": res.count, //解析数据长度
        "data": res.rt //解析数据列表
    };
} ;
```

#### 程序中的页面事件逻辑 

table数据表格中用模板添加操作列时

##### 1.监听表格事件并触发视图注册事件 

```javascript
//注：tool是工具条事件名，treeTable_item是table原始容器的属性 lay-filter="对应的值"
// layEvent 是事件模板内元素 lay-event='TreeTableRoleDel' 属性值
table.on("tool(treeTable_item)",function(obj){
                        var data = obj.data;
                        var layEvent = obj.event;
                        me.trigger(layEvent,[obj.data]) ;
                    }) ;
```

##### 2.视图添加监听自定义事件 

```javascript

this.on("TreeTableRoleDel",this.TreeTableRoleDel_handler) ;
```

##### 3.视图监听事件中添加参数调用显示代码,并将数据传入

```javascript
TreeTableRoleDel_handler:function(data){
            var d = {id:data[0].id} ;
            this.layerItem("delItem",data[0]) ;
        }
```

##### 4.显示代码将数据展示出来,等待请求后台操作,请求后台时调用数据Model中的相应方法请求

```javascript
layerItem:function(modelMethodName,data){
            var me = this ;
            if(!this.$itemForm) this.$itemForm = ls.d.getHtml("app/dev/item.form.html") ;
            layui.use(['layer','form'], function() { //独立版的layer无需执行这一句
                var $ = layui.jquery, layer = layui.layer , form = layui.form; //独立版的layer无需执行这一句
                layer.open({
                    type: 1 //此处以iframe举例
                    ,title: '新增菜单'
                    ,maxmin: true
                    ,area:"auto"
                    ,content:me.$itemForm[0].outerHTML
                    ,zIndex: layer.zIndex //重点1
                    ,success: function(layero){
                        form.render();
                    }
                });
                form.on('submit(submit)', function(data){
                    var mitem = new MItem(data.field) ;
                    mitem[modelMethodName](me) ;
                    return false ;
                }) ;
                if(data){
                    form.val("item_form",data) ;
                }
            });
        }
```

##### 5.数据model中的方法请求操作完成后再刷新页面

```javascript
  delItem:function(view){
            ls.d.ajax({
                url:'dev/delItem.act',
                data:this.attributes,
                success:function(res){
                    lk.ts.alert(res.msg) ;
                    view.treeTable() ;
                }
            }) ;
        },
```



### 表单

#### 表单初始赋值

语法：*form.val('lay-filter的值', object);*

```javascript
//formTest 即 class="layui-form" 所在元素对应的 lay-filter="" 对应的值
form.val("formTest", {
  "username": "贤心" // "name": "value"
  ,"sex": "女"
  ,"auth": 3
  ,"check[write]": true
  ,"open": false
  ,"desc": "我爱layui"
})
```



#### 事件监听

语法：form.on('event(过滤器值)', callback);

form模块在 layui 事件机制中注册了专属事件，所以当你使用layui.onevent()自定义模块事件时，请勿占用form名。form支持的事件如下：

| event    | 描述                       |
| -------- | -------------------------- |
| select   | 监听select下拉选择事件     |
| checkbox | 监听checkbox复选框勾选事件 |
| switch   | 监听checkbox复选框开关事件 |
| radio    | 监听radio单选框事件        |
| submit   | 监听表单提交事件           |



例:

默认情况下，事件所监听的是全部的form模块元素，但如果你只想监听某一个元素，使用事件过滤器即可。
如：*<select lay-filter="test"></select>*

```javascript
form.on('select(test)', function(data){
  console.log(data);
});
```





## bootstrap3

ie兼容

```html
<!DOCTYPE html>
<html>
   <head>
      <title>Bootstrap 模板</title>
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <!-- 引入 Bootstrap -->
      <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
 
      <!-- HTML5 Shiv 和 Respond.js 用于让 IE8 支持 HTML5元素和媒体查询 -->
      <!-- 注意： 如果通过 file://  引入 Respond.js 文件，则该文件无法起效果 -->
      <!--[if lt IE 9]>
         <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
         <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
      <![endif]-->
   </head>
   <body>
      <h1>Hello, world!</h1>
 
      <!-- jQuery (Bootstrap 的 JavaScript 插件需要引入 jQuery) -->
      <script src="https://code.jquery.com/jquery.js"></script>
      <!-- 包括所有已编译的插件 -->
      <script src="js/bootstrap.min.js"></script>
   </body>
</html>
```

## mysql

### 导出数据库

```mysql
mysqldump --user=root --password=root --default-character-set=utf8 "db_erp"  > db_drp.2019-07-15.sql
```

### 导入数据库

```mysql
mysql -u root -proot
-- 进入mysql后
\. xxx.sql
```

### 函数

```mysql
-- 连接
-- concat函数
concat(str1,str2)

-- 指定连接符号
-- concat_ws
concat_ws(':',str1,str2)
-- group_concat  是将统一分组的内容进行连接
select groupColumn,group_concat(col) from table group by groupColumn
```



## redis

https://www.runoob.com/redis/redis-tutorial.html

### 基本命令

```redis
-- 本地无密码
redis-cli
-- 检测redis服务是否启动 返回pong表示启动
ping
-- 连接远程redis
redis-cli -h host -p port -a password
```

### 字符串操作

```redis
### 字符串操作
Redis 字符串数据类型的相关命令用于管理 redis 字符串值，基本语法如下：

语法
redis 127.0.0.1:6379> COMMAND KEY_NAME
实例
redis 127.0.0.1:6379> SET runoobkey redis
OK
redis 127.0.0.1:6379> GET runoobkey
"redis"
在以上实例中我们使用了 SET 和 GET 命令，键为 runoobkey。

Redis 字符串命令
下表列出了常用的 redis 字符串命令：

序号	命令及描述
1	SET key value
设置指定 key 的值
2	GET key
获取指定 key 的值。
3	GETRANGE key start end
返回 key 中字符串值的子字符
4	GETSET key value
将给定 key 的值设为 value ，并返回 key 的旧值(old value)。
5	GETBIT key offset
对 key 所储存的字符串值，获取指定偏移量上的位(bit)。
6	MGET key1 [key2..]
获取所有(一个或多个)给定 key 的值。
7	SETBIT key offset value
对 key 所储存的字符串值，设置或清除指定偏移量上的位(bit)。
8	SETEX key seconds value
将值 value 关联到 key ，并将 key 的过期时间设为 seconds (以秒为单位)。
9	SETNX key value
只有在 key 不存在时设置 key 的值。
10	SETRANGE key offset value
用 value 参数覆写给定 key 所储存的字符串值，从偏移量 offset 开始。
11	STRLEN key
返回 key 所储存的字符串值的长度。
12	MSET key value [key value ...]
同时设置一个或多个 key-value 对。
13	MSETNX key value [key value ...]
同时设置一个或多个 key-value 对，当且仅当所有给定 key 都不存在。
14	PSETEX key milliseconds value
这个命令和 SETEX 命令相似，但它以毫秒为单位设置 key 的生存时间，而不是像 SETEX 命令那样，以秒为单位。
15	INCR key
将 key 中储存的数字值增一。
16	INCRBY key increment
将 key 所储存的值加上给定的增量值（increment） 。
17	INCRBYFLOAT key increment
将 key 所储存的值加上给定的浮点增量值（increment） 。
18	DECR key
将 key 中储存的数字值减一。
19	DECRBY key decrement
key 所储存的值减去给定的减量值（decrement） 。
20	APPEND key value
如果 key 已经存在并且是一个字符串， APPEND 命令将指定的 value 追加到该 key 原来值（value）的末尾。
```

### 键操作

```redis
### Redis 键(key)
Redis 键命令用于管理 redis 的键。

语法
Redis 键命令的基本语法如下：

redis 127.0.0.1:6379> COMMAND KEY_NAME
实例
redis 127.0.0.1:6379> SET runoobkey redis
OK
redis 127.0.0.1:6379> DEL runoobkey
(integer) 1
在以上实例中 DEL 是一个命令， runoobkey 是一个键。 如果键被删除成功，命令执行后输出 (integer) 1，否则将输出 (integer) 0

Redis keys 命令
下表给出了与 Redis 键相关的基本命令：

序号	命令及描述
1	DEL key
该命令用于在 key 存在时删除 key。
2	DUMP key
序列化给定 key ，并返回被序列化的值。
3	EXISTS key
检查给定 key 是否存在。
4	EXPIRE key seconds
为给定 key 设置过期时间，以秒计。
5	EXPIREAT key timestamp
EXPIREAT 的作用和 EXPIRE 类似，都用于为 key 设置过期时间。 不同在于 EXPIREAT 命令接受的时间参数是 UNIX 时间戳(unix timestamp)。
6	PEXPIRE key milliseconds
设置 key 的过期时间以毫秒计。
7	PEXPIREAT key milliseconds-timestamp
设置 key 过期时间的时间戳(unix timestamp) 以毫秒计
8	KEYS pattern
查找所有符合给定模式( pattern)的 key 。
9	MOVE key db
将当前数据库的 key 移动到给定的数据库 db 当中。
10	PERSIST key
移除 key 的过期时间，key 将持久保持。
11	PTTL key
以毫秒为单位返回 key 的剩余的过期时间。
12	TTL key
以秒为单位，返回给定 key 的剩余生存时间(TTL, time to live)。
13	RANDOMKEY
从当前数据库中随机返回一个 key 。
14	RENAME key newkey
修改 key 的名称
15	RENAMENX key newkey
仅当 newkey 不存在时，将 key 改名为 newkey 。
16	TYPE key
返回 key 所储存的值的类型。
```

