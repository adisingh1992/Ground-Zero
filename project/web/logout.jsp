<%
    session.setAttribute("session", null);
    session.invalidate();
    response.sendRedirect("loginform.jsp");
%>