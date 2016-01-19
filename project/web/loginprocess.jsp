<%@page import="bean.Login"%>
<jsp:useBean id="obj" class="bean.LoginBean"/>  
<jsp:setProperty property="*" name="obj"/>  
<%  
boolean status=Login.validate(obj);  
if(status){
    session.setAttribute("session","TRUE");
    response.sendRedirect("home.jsp");
}
else{
    out.print("Sorry, email or password error");  
}
%>