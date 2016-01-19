<%@include file="/header.jsp" %>
<%@include file="/nav_bar.jsp" %>
<%@ page import="java.sql.*" %>
<%@ page import="bean.ConnectionProvider" %>
<%
    String myname =  (String)session.getAttribute("session");
    if(myname==null)
        {
        response.sendRedirect("login.jsp");
    }
    else
       {
        Statement st=ConnectionProvider.getCon().createStatement();
        Statement st1=ConnectionProvider.getCon().createStatement();
        Statement st2=ConnectionProvider.getCon().createStatement();
        ResultSet rs,ps,ss;
        rs=st.executeQuery("select uname, sum(points) from easy_result group by uname;");
        ps=st1.executeQuery("select uname, sum(points) from intermediate_result group by uname;");
        ss=st2.executeQuery("select uname, sum(points) from expert_result group by uname;");
%>
<h1 class="r_contain1">Ground-Zero Rankings</h1>
<div class="r_contain2">
            <br/><br/>
            <table class="gz-table gz-striped gz-border gz-bordered r_table">
                <caption>EASY MODE</caption>
                <tr class="gz-teal">
                    <td>User Name</td>
                    <td>Total Points</td>
                </tr>
                <%
                while(rs.next()){
                    %>
                <tr>
                    <td><%=rs.getString(1)%></td>
                    <td><%=rs.getString(2)%></td>
                </tr>
                <%
                }
            %>
            </table>
            <br/><br/>
            <table class="gz-table gz-striped gz-border gz-bordered r_table">
                <caption>INTERMEDIATE MODE</caption>
                <tr class="gz-teal">
                    <td>User Name</td>
                    <td>Total Points</td>
                </tr>
                <%
                while(ps.next()){
                    %>
                <tr>
                    <td><%=ps.getString(1)%></td>
                    <td><%=ps.getString(2)%></td>
                </tr>
                <%
                }
            %>
            </table>
            <br/><br/>
            <table class="gz-table gz-striped gz-border gz-bordered r_table">
                <caption>EXPERT MODE</caption>
                <tr class="gz-teal">
                    <td>User Name</td>
                    <td>Total Points</td>
                </tr>
                <%
                while(ss.next()){
                    %>
                <tr>
                    <td><%=ss.getString(1)%></td>
                    <td><%=ss.getString(2)%></td>
                </tr>
                <%
                }
            %>
            </table>
            <br/><br/>
        </div>
<%
        }
%>
<%@include file="/footer.jsp"%>