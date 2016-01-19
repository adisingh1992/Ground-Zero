<%@include file="/header.jsp" %>
<%
    String myname =  (String)session.getAttribute("admin");
    if(myname!=null)
        {
        response.sendRedirect("mgmnt.jsp");
    }
    else 
       {
%>
	<div class="gz-container gz-padding gz-card-8" id="log_form" style="height:41.5%">
	<form action="admin_process.jsp" method="post">
		<div class="gz-group">
			<input type="text" name="aname" class="gz-input" required/>
			<label class="gz-label">Admin-Name</label>
		</div>
		<div class="gz-group">
			<input type="password" name="pass" class="gz-input" required/>
			<label class="gz-label">Password</label>
		</div>
		<button type="submit" class="gz-btn gz-teal">SUBMIT</button>
	</form>
	</div>
<%
	}
%>
<%@include file="/footer.jsp" %>