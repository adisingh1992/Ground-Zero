<%
    String myname = (String)session.getAttribute("session");
    if(myname!=null){%>
        <%@include file="header.jsp"%>
        <div>
            <form action="comp.jsp" method="POST">
                <div class="c_contain">
                    <button value="easy" name="type" class="gz-light-grey t_btn"><span class="c_label">EASY</span></button>
                    <button value="intermediate" name="type" class="gz-light-grey t_btn"><span class="c_label">INTERMEDIATE</span></button>
                    <button value="expert" name="type" class="gz-light-grey t_btn"><span class="c_label">EXPERT</span></button>
                    <br/><br/>
                    <h3 id="b3">PLEASE SELECT A TYPE OF CHALLENGE</h3>
                </div>
            </form>
        </div>
        <%@include file="footer.jsp"%>
    <%
    }
    else
        response.sendRedirect("index.jsp");
%>