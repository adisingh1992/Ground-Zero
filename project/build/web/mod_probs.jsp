<%@include file="dash_head.jsp"%>
<%@ page import="java.sql.*" %>
<%@ page import="bean.ConnectionProvider" %>
<form action="probs_process.jsp" method="post" class="c_form">
            <br/><br/>
            EASY:: <input type="radio" value="easy" name="type"/>
            INTERMEDIATE:: <input type="radio" value="intermediate" name="type"/>
            EXPERT:: <input type="radio" value="expert" name="type"/>
            <br/><br/>
            <textarea name="code" spellcheck="false"></textarea>
            <br/><br/>
            <input type="submit" value="UPDATE" class="us"/>
        </form>
    </body>
</html>
<%
       }
%>