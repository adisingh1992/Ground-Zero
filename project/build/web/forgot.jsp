<%@ page import="java.sql.*" %>
<%@ page import="bean.Hash" %>
<%@ page import="bean.ConnectionProvider" %>
<%
    String uname = request.getParameter("uname");
    String email = request.getParameter("email");
    String pass = request.getParameter("pass");
    if(uname.trim().equals("") || email.trim().equals("") || pass.trim().equals("")){
        out.print("Empty Fields");
    }
    else{
        pass = Hash.generateMD5(pass);
        String uemail = "";
        Connection con = ConnectionProvider.getCon();
        Connection con1 = ConnectionProvider.getCon();
        PreparedStatement st = con.prepareStatement("select email from userbase where uname=?;");
        st.setString(1,uname);
        ResultSet rs = st.executeQuery();
        if(rs.next()){
            uemail = rs.getString(1);
            PreparedStatement st1 = con1.prepareStatement("update userbase set pass=? where uname=?");
            st1.setString(1,pass);
            st1.setString(2,uname);
            int x = st1.executeUpdate();
            if(x == 0)
                out.print("Password Reset Failed..!!");
            else
                out.print("Password Updation Successfull..!!");
        }
        else
            out.print("No Such User Exists..!!");
    }
%>
