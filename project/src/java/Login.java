package bean;
import java.sql.*;
public class Login{
    public static boolean status;
	public static boolean validate(LoginBean bean){
		try{
			Connection con=ConnectionProvider.getCon();
			PreparedStatement ps=con.prepareStatement("select * from userbase where uname=? and pass=?");
			String pwd=Hash.generateMD5(bean.getPass());
                        ps.setString(1,bean.getUname());
			ps.setString(2, pwd);
			ResultSet rs=ps.executeQuery();
                        status = rs.next();
                }catch(Exception e){}
		return status;
	}
}