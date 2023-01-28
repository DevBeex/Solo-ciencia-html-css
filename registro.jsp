<html>
<head>
    <title>Registro</title>
</head>

<body>
    <%@page import = "java.sql.*" %>
	
    <%
        String nombre = request.getParameter("Firstname");
    	String apellido = request.getParameter("Lastname");
        String edad = request.getParameter("edad");
        String pass = request.getParameter("password");
    %>

    <%Class.forName("com.mysql.jdbc.Driver");
    Connection dbconect = DriverManager.getConnection("jdbc:mysql://localhost:3306/log", "root", "");
    Statement dbstatement = dbconect.createStatement();
    String insertarsql = "INSERT INTO log(Nombre, Apellido, Edad, Contraseña)VALUES('"+nombre+"','"+apellido+"','" +edad+ " ','" +pass+"');";
    dbstatement.executeUpdate(insertarsql);
    response.sendRedirect("loginsemestral.html");%> 
	
</body>
</html>