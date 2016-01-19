<%@ page import="bean.comp_process"%>
<jsp:useBean id="obj" class="bean.comp_bean"/>
<jsp:setProperty property="*" name="obj"/>

<%
    int status = comp_process.c_process(obj);
    if(status>0)
        out.print("<script>alert('Code Successfully Submitted');</script>");
    else if(status<0)
        out.print("<script>alert('Awww..!! Snap..Something Went Wrong. Please Try Again.');</script>");
    else
        out.print("<script>alert('Database Error. Please Try Again.');</script>");
    out.print("<script>location.href='categ.jsp';</script>");
%>