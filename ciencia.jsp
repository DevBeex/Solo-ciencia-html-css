<html>
<head>
    <title>Registro</title>
</head>

<body>
    <%@page import = "java.sql.*" %>
	
    <%
        String nombre = request.getParameter("nombre");
    	String cedula = request.getParameter("cedula");
        String fecha = request.getParameter("fecha");
    %>

    <%Class.forName("com.mysql.jdbc.Driver");
    Connection dbconect = DriverManager.getConnection("jdbc:mysql://localhost:3306/log", "root", "");
    Statement dbstatement = dbconect.createStatement();
    String insertarsql = "INSERT INTO cursociencia(Nombre, Cedula, Fecha)VALUES('"+nombre+"','"+cedula+"','" +fecha+ " ');";
    dbstatement.executeUpdate(insertarsql);
    response.sendRedirect("Home.html");%> 
	
</body>
</html>