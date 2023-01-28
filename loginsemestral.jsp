<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%@page import = "java.sql.*" %>
	  <% String nombre = request.getParameter("username");
	     String contraseña = request.getParameter("password");
	  %>
	  <%
	  Class.forName("com.mysql.jdbc.Driver");
	  Connection dbconect = DriverManager.getConnection("jdbc:mysql://localhost:3306/log", "root", "");
	  %>
	  <%try
	  {
	  PreparedStatement consultaP = dbconect.prepareStatement("SELECT * FROM log WHERE Nombre = ? AND Contraseña=?");
	  consultaP.setString(1, nombre);
	  consultaP.setString(2, contraseña);
	  ResultSet resultado = consultaP.executeQuery();
	  if (resultado.next())
		  response.sendRedirect("Home.html");
	  else
		  response.sendRedirect("registrarse2.html");
	  } catch (Exception e)
	  {
		  response.sendRedirect("registrarse2.html");
	  } %>
</body>
</html>