package bean;
import java.sql.*;
public class comp_process{
        public static int c_process(comp_bean b){
                int status = 0;
                try{
                    Connection con = ConnectionProvider.getCon();
                    PreparedStatement ps = con.prepareStatement(getQuery(b));
                    ps.setString(1,b.getId());
                    ps.setString(2,b.getUname());
                    ps.setString(3,b.getCode());
                    status = ps.executeUpdate();
                }catch(Exception e){}
                return status;
        }
        public static String getQuery(comp_bean b){
            String q = " ";
            switch (b.getCvalue()) {
                case "48bb6e862e54f2a795ffc4e541caed4d":
                    q = "INSERT INTO easy_result(id,uname,code) VALUE(?,?,?)";
                    break;
                case "438fa616dea43dbb0a42b0ce2d393e7a":
                    q = "INSERT INTO intermediate_result(id,uname,code) VALUE(?,?,?)";
                    break;
                case "b9b83bad6bd2b4f7c40109304cf580e1":
                    q = "INSERT INTO expert_result(id,uname,code) VALUE(?,?,?)";
                    break;
            }
            return q;
        }
}