<%--
  Created by IntelliJ IDEA.
  User: Ian
  Date: 30/11/2016
  Time: 8:54 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%

    String nric = (String) session.getAttribute("nric");
    String guess = (String) request.getAttribute("guess");

%>





Congratulations <%=nric%>, <%=guess%> is the corrent number!<br><a href="guess.jsp">Back to home</a>
</body>
</html>
