<%@page 
language="java" 
contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8" 
import="br.com.model.BeanMedia"
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Media Center</title>
</head>
<body>

	<jsp:useBean id="media" class="br.com.model.BeanMedia" scope="request">
		<jsp:setProperty name="media" property="title"
			value='<%=request.getParameter("title")%>' />
		<jsp:setProperty name="media" property="year" />
		<jsp:setProperty name="media" property="type" />
	</jsp:useBean>

	<% 
	if (media.isValid()) {
	%>
	<jsp:forward page="Success.jsp" />
	<% 
	} else {
	%>
	<jsp:forward page="RetryMedia.jsp"></jsp:forward>
	<% 
	}
	%>
	
</body>
</html>