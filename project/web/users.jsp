<%@include file="/dash_head.jsp" %>
<%@ page import="java.sql.*" %>
<%@ page import="bean.ConnectionProvider" %>
<script>
    function confirm1(){
        var x = confirm("Are You Sure You Want To Delete This User?");
        if(x==true)
            return true;
        else
            return false;
    }
</script>
    <div class="contain">
    <div class="users">
        <h2>** Select A User To Delete **</h2>
        <form action="user_process.jsp" method="post" onsubmit="return confirm1();">
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
                <input type="submit" value="DELETE" class="us"/>
        </form>
    </div>
    </div>
    </body>
</html>
<%
    }
%>