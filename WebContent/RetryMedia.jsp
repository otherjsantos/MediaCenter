<%@page 

language="java" 
contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"
import="br.com.model.BeanMedia"
%>
<jsp:useBean id="media" class="br.com.model.BeanMedia" scope="request" />

<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>Media center</title>
	</head>
	<body>
		<form action="ProcessMediaForm.jsp" method="post" name="medias">
			Title: <input type="text" name="name" value='<%= media.getTitle()%>'>
			<%= media.getMistakes("tittle") %>
			<br />
			Year: <input type="text" name="year" value='<%= media.getYear()%>'>
			<%= media.getMistakes("year") %>
			<br />
			
			<input type="radio" name="type" value="VHS" 
			<% 
				if (media.getType() != null && media.getType().equals("VHS"))
					out.print("checked");
			%>
			> VHS
			
			<input type="radio" name="type" value="DVD"
			<% 
				if (media.getType() != null && media.getType().equals("DVD"))
					out.print("checked");
			%>
			> DVD
			<br />
			<%= media.getMistakes("type") %>
			<br />
			<input type="submit" value="Confirm">
			<input type="reset" value="Clean">
		</form>
	</body>
</html>