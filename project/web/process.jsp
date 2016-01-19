<%@page import="bean.Register"%>
<jsp:useBean id="obj" class="bean.User"/>  
<jsp:setProperty property="*" name="obj"/>  
  
<%  
int status=Register.register(obj);  
if(status>0){  
    response.sendRedirect("loginform.jsp");
}
%>