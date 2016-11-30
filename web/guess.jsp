<%--
  Created by IntelliJ IDEA.
  User: Ian
  Date: 30/11/2016
  Time: 8:02 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String nric = request.getParameter("nric");
    String name = request.getParameter("name");


    if (nric == null && name == null) {
        nric = (String) session.getAttribute("nric");
        name = (String) session.getAttribute("name");
    } else {
        session.setAttribute("nric", nric);
        session.setAttribute("name", name);
    }


%>
Your NRIC is <%=nric%><br>
Your email address is <%=name%><br>
<form action="/controller">
    <input type="text" name="guess" placeholder="Pick your lucky number"/>
    <input type="submit" value="Submit"/>

</form>

</body>
</html>
