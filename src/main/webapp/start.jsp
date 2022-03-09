<%--
  Created by IntelliJ IDEA.
  Project name(项目名称)：Spring_MVC_JSON_data_interaction
  File name(文件名): start
  Author(作者）: mao
  Author QQ：1296193245
  GitHub：https://github.com/maomao124/
  Date(创建日期)： 2022/3/9
  Time(创建时间)： 20:56
  Description(描述)： 无
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script type="text/javaScript"
            src="${pageContext.request.contextPath }/js/jquery-3.5.1.min.js"></script>
</head>
<body>
<form action="">
    用户名：<input type="text" name="name" id="name"/>
    <br>
    密码：<input type="password" name="password" id="password"/>
    <br>
    年龄：<input type="text" name="age" id="age">
    <br>
    <input type="button" value="测试" onclick="testJson()"/>
</form>
</body>
<script type="text/javaScript">
    function testJson()
    {
        var name = $("#name").val();
        var password = $("#password").val();
        var age = $("#age").val();
        $.ajax({
            //请求路径
            url: "${pageContext.request.contextPath}/testJson",
            //请求类型
            type: "post",
            //data表示发送的数据
            data: JSON.stringify({
                name: name,
                password: password,
                age: age
            }), //定义发送请求的数据格式为JSON字符串
            contentType: "application/json;charset=utf-8",
            //定义回调响应的数据格式为JSON字符串，该属性可以省略
            dataType: "json",
            //成功响应的结果
            success: function (data)
            {
                if (data != null)
                {
                    alert("输入的用户名：" + data.name + "，密码：" + data.password
                        + "， 年龄：" + data.age);
                }
            }
        });
    }
</script>
</html>
