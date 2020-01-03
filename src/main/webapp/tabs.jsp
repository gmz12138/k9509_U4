<%--
  Created by IntelliJ IDEA.
  User: GMZ
  Date: 2019/12/20
  Time: 9:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <%--<script language="JavaScript" type="text/javascript" src="/js/jquery-1.9.1.min.js"></script>--%>
    <link rel="stylesheet" type="text/css" href="/easyUI/themes/default/easyui.css">
    <link rel="stylesheet" type="text/css" href="/easyUI/themes/icon.css">
    <link rel="stylesheet" type="text/css" href="/easyUI/css/demo.css">
    <script src="/js/jquery-1.8.3.js"></script>
    <!--jquery.easyui.min.js包含了easyUI中的所有插件-->
    <script src="/js/jquery.easyui.min.js"></script>
</head>
<body>
    <input type="button" value="添加tab" id="btn">
    <div id="tt" class="easyui-tabs" style="width:500px;height:250px;">
        <div title="Tab1" style="padding:20px;display:none;">
            tab1
        </div>
        <div title="Tab2" data-options="closable:true" style="overflow:auto;padding:20px;display:none;">
            tab2
        </div>
        <div title="Tab3" data-options="iconCls:'icon-reload',closable:true" style="padding:20px;display:none;">
            tab3
        </div>
    </div>
</body>
<script>
//    $('#tt').tabs({
//        border:true,
//        onSelect:function(title){
//            alert(title+' is selected');
//        }
//    });

$("#btn").click(function () {
    $('#tt').tabs('add',{
        title:'New Tab',
        content:'哈哈哈哈哈',
        closable:true,
        tools:[{
            iconCls:'icon-mini-refresh',
            handler:function(){
                alert('refresh');
            }
        }]
    });
});

</script>
</html>
