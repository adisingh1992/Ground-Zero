<%@include file="/header.jsp" %>
<%  String myname =  (String)session.getAttribute("session"); %>
	<div class="gz-container">
		<img src="static/images/home_graphic.png" style="width: 46%; height: 52.5%"/>
		<div class="gz-center" id="h-card">
			<h2>ENTER THE PORTAL</h2>
			<button class="gz-btn gz-teal" id="b1" onClick="user()">USER</button>
			<button class="gz-btn gz-teal" id="b2" onClick="admin()">ADMIN</button>
			<br/><br/>
                        <%
                            if(myname!=null)
                                {
                                out.print("<h3 id='b3'>Welcome "+myname+" ..!!</h3>");
                            }
                            else 
                                {
                        %>
			<h3 id="b3" onClick="register()">Not Registered..!! Join Now</h3>
                        <%
                        }
                        %>
                </div>
	</div>
        <div class="float" style="background-image: url('static/images/faq.png');" onclick="location.href='faq.jsp';"></div>
<%@include file="/footer.jsp" %>