<%
    String myname =  (String)session.getAttribute("admin");
    if(myname==null)
        {
        response.sendRedirect("admin_login.jsp");
    }
    else 
       {
%>
<html>
    <head>
        <title>Ground-Zero | C.M.S.</title>
        <link href="static/css/admin_style.css" type="text/css" rel="stylesheet"/>
    </head>
    <body>
        <div class="head">
            <h1 class="title">GROUND-ZERO MANAGEMENT</h1>
            <h3 class="aname">Welcome <%=myname%>, <a href="logout.jsp">Logout</a></h3>
        </div>
        <div class="side_nav">
            <ul>
                <li><a href="mgmnt.jsp">DASHBOARD</a></li>
                <li><a href="users.jsp">USERS</a></li>
                <li><a href="mod_probs.jsp">PROBLEMS</a></li>
                <li><a href="update_res.jsp">RESULTS</a></li>
            </ul>
        </div>