<%@include file="/header.jsp" %>
<%@include file="/nav_bar.jsp" %>
<%@ page import="java.sql.*" %>
<%@ page import="bean.ConnectionProvider" %>
<%! int count; %>
<%
    String myname =  (String)session.getAttribute("session");
    Integer qcount = (Integer)session.getAttribute("count");
    String type = request.getParameter("type");
    if(type!=null){
    if(myname==null){
        response.sendRedirect("login.jsp");
    }
    else{
        if(qcount==null){
            count=1;
            session.setAttribute("count",count);
        }
        else
            count++;
        Statement st=ConnectionProvider.getCon().createStatement();
        ResultSet rs;
        rs=st.executeQuery("Select "+type+" from competition where id="+count+"");
%>
        <div id="comp">
            <h3>PROBLEM STATEMENT :: <%=count %></h3>
            <div id="comp1">
                <%
                    if(rs.next()){
                        if(rs.getString(1)==null){
                            session.setAttribute("count", null);
                            out.print("<script>alert('Great..!! You have Solved It All.');</script>");
                            out.print("<script>location.href='categ.jsp';</script>");
                            }
                        out.print(rs.getString(1));
                    }
                    else{
                        session.setAttribute("count", null);
                        out.print("<script>alert('Great..!! You have Solved It All.');</script>");
                        out.print("<script>location.href='categ.jsp';</script>");
                    }
                %>
                <br/><br/>
            </div>
            <form method="POST" action="comp_process.jsp" class="c_form">
                <textarea name="code" spellcheck="false"></textarea>
                <input type="hidden" value="48bb6e862e54f2a795ffc4e541caed4d" name="cvalue"/>
                <input type="hidden" value="<%=count %>" name="id"/>
                <input type="hidden" value="<%=myname %>" name="uname"/>
                <br/><br/>
                <input type="button" value="NEXT" onclick="location.reload()" class="gz-teal ps1"/>
                <input type="submit" value="SUBMIT YOUR CODE" class="gz-teal ps1"/>
            </form>
        </div>
<%
        }
    }
%>
<%@include file="/footer.jsp" %>