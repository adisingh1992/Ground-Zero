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
			<br/><p onclick="forgot()" style="color: red; font-size: 1.12em;">FORGOT YOUR PASSWORD? Reset It Now..!!</p>
	</form>
	</div>
<%
	}
%>
<%@include file="/footer.jsp" %>
