<%@page import="bean.Login"%>
<jsp:useBean id="obj" class="bean.LoginBean"/>  
<jsp:setProperty property="*" name="obj"/>  
<%  
boolean status=Login.validate(obj);
if(status){
    String user = request.getParameter("uname");
    session.setAttribute("session",user);
    response.sendRedirect("categ.jsp");
}
else{
    out.print("<script>alert('Wrong User-Name or Password');</script>");
%>
<%@include file="login.jsp"%>
<%
}
%>