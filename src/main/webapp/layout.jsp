<%--
  Created by IntelliJ IDEA.
  User: GMZ
  Date: 2019/12/20
  Time: 8:45
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
<body class="easyui-layout">
    <div data-options="region:'north',title:'North Title',split:true" style="height:100px;"></div>
    <div data-options="region:'south',title:'South Title',split:true" style="height:200px;"></div>
    <div data-options="region:'east',iconCls:'icon-reload',title:'East',split:true" style="width:100px;"></div>
    <div data-options="region:'west',title:'West',split:true" style="width:200px;"></div>
    <div data-options="region:'center',title:'center title'" style="padding:5px;background:#eee;">
        <div class="easyui-layout" data-options="fit:true">
            <div data-options="region:'west',collapsed:true" style="width:180px"></div>
            <div data-options="region:'center'"></div>
        </div>
    </div>
</body>
</html>
