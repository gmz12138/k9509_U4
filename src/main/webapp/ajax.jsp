<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: GMZ
  Date: 2019/12/19
  Time: 8:23
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
<input type="button" id="bt" value="显示学生信息">
<input type="button" id="bt2" value="显示学生信息2">
<div id="dg"></div>
<div id="show"></div>
<div id="show2"></div>
</body>
<script>
    $(function () {
        $("#bt").click(function () {
            $.ajax({
                url:"${pageContext.request.contextPath}/getStudentData",
                async:true,
                data:null,
                dataType:"json",
                type:"post",
                success:function (data) {
                    console.log(data);
                    var str = "<table border=1 cellpadding='5' cellspacing='0' width='50%'><tr><td>学号</td><td>年龄</td><td>姓名</td><td>电话</td><td>成绩</td><td>详情</td></tr>";
                    for(var i = 0;i<data.length;i++){
                        var s = data[i];
                        str =str + "<tr><td>"+s.id+"</td><td>"+s.age+"</td><td>"+s.name+"</td><td>"+s.phone+"</td><td>"+s.score+"</td>" +
                            "<td><input type='button' id='bt2' onclick='jump("+s.id+")' value='详情'></td></tr>";
                    }
                    str = str+"</table>";
                    $("#show").html(str);
                },
                error:function (data) {
                    console.log("接收错误");
                }
            })
        })
    });
    function jump(id) {
        $.ajax({
            url:"${pageContext.request.contextPath}/findStudentById",
            async:true,
            data:{"id":id},
            dataType:"json",
            type:"post",
            success:function (data) {
                console.log(data);
                var str = "学号："+data.id+"<br>"
                            +"年龄："+data.age+"<br>"
                            +"姓名："+data.name+"<br>"
                            +"电话："+data.phone+"<br>"
                            +"成绩："+data.score+"<br>";
                $("#show2").html(str);
            }
        })
    }
//    $("#bt2").click(function(){
        //加载数据
        $('#dg').datagrid({
            url:'getStudentData2',
            pagination:true, //开启分页
            pageSize:3,
            pageList:[2,3,5,10],
            columns:[[
                {field:'id',title:'学号',width:100,align:'center'},
                {field:'age',title:'年龄',width:100,align:'center'},
                {field:'name',title:'姓名',width:100,align:'center'},
                {field:'phone',title:'电话',width:100,align:'center'},
                {field:'score',title:'分数',width:100,align:'center'}
            ]]
        });
//    });
</script>
</html>
