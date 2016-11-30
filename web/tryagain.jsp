<%--
  Created by IntelliJ IDEA.
  User: Ian
  Date: 30/11/2016
  Time: 9:14 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
String tt = (String) request.getAttribute("try");




%>



Your number is <%=tt%> than the lucky number!<a href="guess.jsp">Back To Home</a>

</body>
</html>
