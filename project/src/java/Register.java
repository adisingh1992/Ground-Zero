package bean;

import java.sql.*;

public class Register{

public static int register(User u){
int status=0;
try{
Connection con=ConnectionProvider.getCon();
PreparedStatement ch=con.prepareStatement("select uname from userbase where uname=?");
ch.setString(1,u.getUname());
ResultSet rs=ch.executeQuery();
if(rs.next()){
    status = -1;
}
else{
PreparedStatement ps=con.prepareStatement("insert into userbase values(?,?,?,?)");
String pwd=Hash.generateMD5(u.getUpass());
ps.setString(1,u.getFname());
ps.setString(2,u.getUemail());
ps.setString(3,u.getUname());
ps.setString(4,pwd);
status=ps.executeUpdate();
}
}catch(Exception e){}
return status;
}
}