<%@include file="/header.jsp" %>
<%
    String myname =  (String)session.getAttribute("session");
    if(myname!=null)
        {
        response.sendRedirect("categ.jsp");
    }
    else 
       {
%>
	<div class="gz-container gz-padding gz-card-8" id="log_form">
	<form action="loginprocess.jsp" method="post">
		<div class="gz-group">
			<input type="text" name="uname" class="gz-input" required/>
			<label class="gz-label">User-Name</label>
		</div>
		<div class="gz-group">
			<input type="password" name="pass" class="gz-input" required/>
			<label class="gz-label">Password</label>
		</div>
			<button type="submit" class="gz-btn gz-teal">SUBMIT</button>
			<br/><br/><a href="register.jsp" class="gz-animate-opacity">NOT A MEMBER? Sign-Up Now..!!</a>
	</form>
	</div>
<%
	}
%>
<%@include file="/footer.jsp" %>