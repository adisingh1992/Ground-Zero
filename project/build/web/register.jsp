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
		<form action="process.jsp" method="POST" onsubmit="return validateform()">
			<div class="gz-group">
				<input type="text" name="fname" id="fname" class="gz-input" required/>
				<label class="gz-label">Full-Name</label>
			</div>
			<div class="gz-group">
				<input type="email" name="uemail" id="uemail" class="gz-input" required/>
				<label class="gz-label">E-Mail</label>
			</div>
			<div class="gz-group">
				<input type="text" name="uname" id="uname" class="gz-input" required/>
				<label class="gz-label">User-Name</label>
			</div>
			<div class="gz-group">
				<input type="password" name="upass" id="upass"  class="gz-input" required/>
				<label class="gz-label">Password</label>
			</div>
			<div class="gz-group">
				<input type="password" name="cpass" id="cpass" class="gz-input" required/>
				<label class="gz-label">Confirm Password</label>
			</div>
			<div class="gz-group">
			<label class="gz-checkbox">
				<input type="checkbox" name="tnc" id="tnc"/>
				<div class="gz-checkmark"></div> I Agree To Ground-Zero's Terms & Conditions
			</label>
			</div>
			<button type="submit" class="gz-btn gz-teal">REGISTER</button>  
		</form>
	</div>
<%
	}
%>
<%@include file="/footer.jsp" %>