package bean;
import java.sql.*;
public class aLogin{
    public static boolean status;
	public static boolean validate(aLoginBean bean){
		try{
			Connection con=ConnectionProvider.getCon();
			PreparedStatement ps=con.prepareStatement("select * from adminbase where aname=? and pass=?");
			String pwd=Hash.generateMD5(bean.getPass());
                        ps.setString(1,bean.getAname());
			ps.setString(2, pwd);
			ResultSet rs=ps.executeQuery();
                        status = rs.next();
                }catch(Exception e){}
		return status;
	}
}