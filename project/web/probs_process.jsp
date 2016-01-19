<%@ page import="bean.probs_process"%>
<jsp:useBean id="obj" class="bean.probs_bean"/>
<jsp:setProperty property="*" name="obj"/>

<%
    int status = probs_process.p_process(obj);
    if(status>0)
        out.print("<script>alert('Problem Added Successfully');</script>");
    else if(status<0)
        out.print("<script>alert('Awww..!! Snap..Something Went Wrong. Please Try Again.');</script>");
    else
        out.print("<script>alert('Database Error. Please Try Again.');</script>");
    out.print("<script>location.href='mod_probs.jsp';</script>");
%>