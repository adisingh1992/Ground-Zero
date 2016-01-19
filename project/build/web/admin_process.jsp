<%@page import="bean.aLogin"%>
<jsp:useBean id="obj" class="bean.aLoginBean"/>  
<jsp:setProperty property="*" name="obj"/>  
<%
boolean status=aLogin.validate(obj);
if(status){
    String user = request.getParameter("aname");
    session.setAttribute("admin",user);
    response.sendRedirect("mgmnt.jsp");
}
else{
    out.print("<script>alert('Wrong Admin-Name or Password');</script>");
%>
<%@include file="admin_login.jsp"%>
<%
}
%>