<%@ page import="com.card.* "%>
<jsp:useBean id="card" class="com.card.Card" scope="session"></jsp:useBean>
<jsp:setProperty property="*" name="card"/>
<%
boolean recordSaved = InsertCard.saveCustomer(card);
	if (recordSaved){
		out.println("<h3>Data Inserted Successfully</h3>");
	}
%>
<a href="online.jsp">Do you want to display</a>