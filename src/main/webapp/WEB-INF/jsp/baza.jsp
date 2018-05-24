<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>


<html>
<head>
    <title>Baza</title>
</head>

<%
    try {
        String connectionURL = "jdbc:mysql://localhost:3306/osebe";
        Connection connection = null;
        Class.forName("com.mysql.jdbc.Driver").newInstance();
        connection = DriverManager.getConnection(connectionURL, "root", "root");
        if(!connection.isClosed())
            out.println("Successfully connected to " + "MySQL server using TCP/IP...");
        connection.close();
    }catch(Exception ex){
        out.println("Unable to connect to database.");
    }
%>

</body>
</html>