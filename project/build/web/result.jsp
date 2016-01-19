<%@include file="/header.jsp" %>
<%@include file="/nav_bar.jsp" %>
<%@ page import="java.sql.*" %>
<%@ page import="bean.ConnectionProvider" %>
<%
    String myname =  (String)session.getAttribute("session");
    String points, q_code;
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
        rs=st.executeQuery("Select * from easy_result where uname='"+myname+"' order by id asc");
        ps=st1.executeQuery("Select * from intermediate_result where uname='"+myname+"' order by id asc");
        ss=st2.executeQuery("Select * from expert_result where uname='"+myname+"' order by id asc");
%>
        <div class="categ1">
            <ul>
                <li onclick="show_hide3()">EXPERT</li>
                <li onclick="show_hide2()">INTERMEDIATE</li>
                <li onclick="show_hide1()">EASY</li>
            </ul>
        </div>
        <div id="easy" class="r_contain">
            <h3>Results For Competition (EASY)</h3> 
            <table class="gz-table gz-striped gz-border gz-bordered r_table">
                <tr class="gz-teal">
                    <td>Question Code</td>
                    <td>Points Awarded</td>
                </tr>
                <%
                while(rs.next()){
                    q_code=rs.getString(1);
                    points=rs.getString(4);
                    %>
                <tr>
                    <td><%=q_code%></td>
                    <td><%=points%></td>
                </tr>
                <%
                }
            %>
            </table>
        </div>
            
        <div id="inter" class="r_contain">
            <h3>Results For Competition (INTERMEDIATE)</h3> 
            <table class="gz-table gz-striped gz-border gz-bordered r_table">
                <tr class="gz-teal">
                    <td>Question Code</td>
                    <td>Points Awarded</td>
                </tr>
                <%
                while(ps.next()){
                    q_code=ps.getString(1);
                    points=ps.getString(4);
                    %>
                <tr>
                    <td><%=q_code%></td>
                    <td><%=points%></td>
                </tr>
                    <%
                }
            %>
            </table>
        </div>
            
        <div id="expert" class="r_contain">
            <h3>Results For Competition (EXPERT)</h3> 
            <table class="gz-table gz-striped gz-border gz-bordered r_table">
                <tr class="gz-teal">
                    <td>Question Code</td>
                    <td>Points Awarded</td>
                </tr>
                <%
                while(ss.next()){
                    q_code=ss.getString(1);
                    points=ss.getString(4);
                    %>
                <tr>
                    <td><%=q_code%></td>
                    <td><%=points%></td>
                </tr>
                    <%
                }
        }
            %>
            </table>
        </div>
<%@include file="/footer.jsp" %>