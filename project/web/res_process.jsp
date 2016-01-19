<%@include file="/dash_head.jsp" %>
<%@ page import="java.sql.*" %>
<%@ page import="bean.ConnectionProvider" %>
<%!int count = 0;%>
<%
    String user = request.getParameter("users");
    String type = request.getParameter("type");
    String query = "";
    Integer qcount = (Integer)session.getAttribute("count");
    if(qcount==null){
        count=1;
        session.setAttribute("count",count);
    }
    else
        count++;
    if(type.equals("easy"))
        query = "Select code FROM EASY_RESULT WHERE id="+count+" AND uname='"+user+"';";
    else if(type.equals("intermediate"))
            query = "Select code FROM INTERMEDIATE_RESULT WHERE id="+count+" AND uname='"+user+"';";
    else if(type.equals("expert"))
            query = "Select code FROM EXPERT_RESULT WHERE id="+count+" AND uname='"+user+"';";
    Statement st=ConnectionProvider.getCon().createStatement();
    try{
        ResultSet rs = st.executeQuery(query);
%>
        <div class="contain">
            <h3>SUBMITTED PROGRAM CODE :: <%=count %></h3>
                <%
                    if(rs.next()){
                %>
            <form method="POST" action="res_ins.jsp" class="c_form">
                <br/><br/>
                <textarea name="code" spellcheck="false"><%=rs.getString(1)%></textarea>
                <br/><br/>
                <input type="hidden" value="<%=count %>" name="id"/>
                <input type="hidden" value="<%=user %>" name="uname"/>
                <input type="hidden" value="<%=type %>" name="type"/>
                AWARD-POINTS :: <input type="number" name="points"/>
                <br/><br/>
                <input type="submit" value="UPDATE" class="us"/>
            </form>
        </div>
<%
                    }
                    else{
                        session.setAttribute("count", null);
                        out.print("<script>alert('Ooops..!! No More Problems For This User.');</script>");
                        out.print("<script>location.href='update_res.jsp';</script>");
                    }
    }catch(Exception e){
            out.print(e.getMessage());
            }
%>
    </body>
</html>
<%
    }
%>