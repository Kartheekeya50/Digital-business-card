<%@ page import="login.* "%>
<jsp:useBean id="data" class="login.Data" scope="session"></jsp:useBean>
<jsp:setProperty property="*" name="data"/>
<%
boolean recordSaved = InsertData.saveData(data);
	if (recordSaved){
		out.println("<h3>Signup Success</h3>");
	}
%>
<a href ="index.html"> Login Here</a>