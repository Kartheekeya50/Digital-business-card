<%@ page import="login.*" %>
<jsp:useBean id="loginData" class="login.LoginData" scope="session"></jsp:useBean>
<jsp:setProperty property="*" name="loginData"/>

<%
String email = loginData.getEmail();
String pwd = loginData.getPwd();

boolean validLogin = LoginProcess.checkLogin(email, pwd);
if (validLogin) {
    session.setAttribute("email", email);
    response.sendRedirect("IndexHome.html");
} else {
    out.println("<h3>Invalid email or password</h3>");
}
%>
>