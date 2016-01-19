package bean;
import java.sql.*;
public class probs_process{
        public static int p_process(probs_bean b){
                int status = 0, count=0, count1=0;
                Connection con = ConnectionProvider.getCon();
                try{
                    String type = b.getType();
                    String code = b.getCode();
                    //Getting Last ID
                    Statement st1=con.createStatement();
                    String query1 = "SELECT ID FROM competition";
                    ResultSet rs1 = st1.executeQuery(query1);
                    while(rs1.next()){
                        count1 = rs1.getInt(1);
                    }
                    count1++;
                    PreparedStatement ss = con.prepareStatement("INSERT INTO competition(ID) value("+count1+");");
                    ss.executeUpdate();
                    //Getting Last ID(Column-Wise)
                    Statement st=con.createStatement();
                    String query = "SELECT ID FROM competition GROUP BY "+type+" ORDER BY ID DESC LIMIT 1";
                    ResultSet rs = st.executeQuery(query);
                    while(rs.next()){
                        count = rs.getInt(1);
                    }
                    //Inserting Data
                    String q = "UPDATE competition SET "+type+"='"+code+"' WHERE id="+count+";";
                    PreparedStatement ps = con.prepareStatement(q);
                    status = ps.executeUpdate();
                }catch(Exception e){}
                return status;
        }
}