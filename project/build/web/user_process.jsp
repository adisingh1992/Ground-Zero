<%@ page import="java.sql.*" %>
<%@ page import="bean.ConnectionProvider" %>
<%
    String user = request.getParameter("users");
    Statement st=ConnectionProvider.getCon().createStatement();
    try{
        st.executeUpdate("delete from userbase where uname='"+user+"';");
        out.print("<script>alert('User Successfully Deleted');</script>");
        out.print("<script>location.href='mgmnt.jsp';</script>");
    }catch(Exception e){
            out.print(e.getMessage());
            }
%>