<%@ page import="java.sql.*" %>
<%@ page import="bean.ConnectionProvider" %>
<%
    Integer id = Integer.parseInt(request.getParameter("id"));
    String user = request.getParameter("uname");
    String type = request.getParameter("type");
    Integer points = Integer.parseInt(request.getParameter("points"));
    String query = "";
    if(type.equals("easy"))
        query = "UPDATE EASY_RESULT SET points="+points+" WHERE id="+id+" and uname='"+user+"';";
    else if(type.equals("intermediate"))
            query = "UPDATE INTERMEDIATE_RESULT SET points="+points+" WHERE id="+id+" and uname='"+user+"';";
    else if(type.equals("expert"))
            query = "UPDATE EXPERT_RESULT SET points="+points+" WHERE id="+id+" and uname='"+user+"';";
    PreparedStatement ps = ConnectionProvider.getCon().prepareStatement(query);
    int x = 0;
    x  = ps.executeUpdate();
    if(x==0){
        out.print("<script>alert('Error..!! Please Try Again');</script>");
        out.print("<script>window.history.back();</script>");
    }
    else{
        out.print("<script>alert('Points Awarded Successfully');</script>");
        out.print("<script>location.href='update_res.jsp';</script>");
    }
%>
