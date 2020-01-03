<%--
  Created by IntelliJ IDEA.
  User: GMZ
  Date: 2019/12/20
  Time: 9:41
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
    <a href="/tabs.jsp" id="btn" class="easyui-linkbutton" data-options="iconCls:'icon-search'">链接按钮1</a>
    <a href="/ajax.jsp" id="btn2">链接按钮2</a>
</body>
<script>
    $("#btn2").linkbutton({
        iconCls: 'icon-search'
    });
</script>
</html>
