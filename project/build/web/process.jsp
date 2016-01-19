<%@page import="bean.Register"%>
<%@page import="bean.sendMail"%>
<jsp:useBean id="obj" class="bean.User"/>  
<jsp:setProperty property="*" name="obj"/>  

<%
String email = request.getParameter("uemail");
String uname = request.getParameter("uname");
String pass = request.getParameter("upass");
int status=Register.register(obj);
if(status<0){
    out.print("<script>alert('This Username Is Already Registered, Try Another One..');</script>");
    out.print("<script>window.history.back();</script>");
}
else if(status>0){
    bean.sendMail.sendE(email, uname, pass);
    out.print("<script>alert('Registered Successfully. Click OK to go to Login screen');</script>");
    out.print("<script>window.location.assign('login.jsp');</script>");
}
else{
    out.print("<script>alert('System Error, Try Again In A Few Minutes');</script>");
    out.print("<script>window.history.back();</script>");
}
%>