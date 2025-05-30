<%--
  Created by IntelliJ IDEA.
  User: xxc
  Date: 2025/5/29
  Time: 17:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>复杂功能示例</title>
    <style>
        body {
            font-family: sans-serif;
            margin: 20px;
        }
        .container {
            padding: 15px;
            border: 1px solid #ccc;
            border-radius: 5px;
            background-color: #f9f9f9;
        }
        input[type="text"], input[type="submit"] {
            padding: 8px;
            margin: 5px 0;
            border-radius: 3px;
            border: 1px solid #ddd;
        }
        .greeting {
            margin-top: 15px;
            font-weight: bold;
            color: green;
        }
    </style>
</head>
<body>

<div class="container">
    <h2>欢迎来到复杂功能示例页面!</h2>

    <form method="POST" action="first.jsp">
        请输入您的名字: <input type="text" name="userName">
        <input type="submit" value="提交">
    </form>

    <%-- JSP Scriptlet to process the form data --%>
    <% 
        String userName = request.getParameter("userName");
        if (userName != null && !userName.trim().isEmpty()) {
    %>
            <p class="greeting">你好, <%= userName %>! 欢迎来到这里。</p>
    <% 
        } else if (request.getMethod().equalsIgnoreCase("POST")) {
    %>
            <p class="greeting" style="color: red;">请输入一个有效的名字!</p>
    <% 
        }
    %>

    <hr>
    <h3>当前服务器时间:</h3>
    <p><%= new java.util.Date() %></p>

</div>

<script>
  // 之前的 JavaScript 逻辑可以保留或根据新功能调整
  // let a = '1233';
  // alert(a); // 这个 alert 可能会在每次页面加载时都弹出，如果不需要可以注释掉
  console.log("页面加载完成，包含复杂功能。");
</script>

</body>
</html>
