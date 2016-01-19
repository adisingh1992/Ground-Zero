<%@include file="/dash_head.jsp" %>
<%@ page import="java.sql.*" %>
<%@ page import="bean.ConnectionProvider" %>
    <div class="contain">
    <div class="users">
        <h2>** Select A User To Update Result **</h2>
        <form action="res_process.jsp" method="post">
            <table>
                <tr>
                    <th>USER-NAME</th>
                    <th>FULL-NAME</th>
                    <th>SELECT</th>
                </tr>
    <%
        Statement st=ConnectionProvider.getCon().createStatement();
        ResultSet rs;
        rs=st.executeQuery("Select uname,fname from userbase;");
        while(rs.next()){
    %>
                <tr>
                    <td><%=rs.getString(1)%></td>
                    <td><%=rs.getString(2)%></td>
                    <td><input type="radio" name="users" value="<%=rs.getString(1)%>"/></td>
                </tr>
        <%
            }
        %>
            </table>
                <br/>
                EASY :: <input type="radio" name="type" value="easy"/>
                INTERMEDIATE :: <input type="radio" name="type" value="intermediate"/>
                EXPERT :: <input type="radio" name="type" value="expert"/>
                <br/><br/>
                <input type="submit" value="SUBMIT" class="us"/>
        </form>
    </div>
    </div>
    </body>
</html>
<%
    }
%>