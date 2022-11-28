<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import = "java.util.ArrayList" %>
<%@page import = "bo.Employee" %>
<%@page import = "javax.servlet.RequestDispatcher" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="main.css">
    <title>Document</title>
</head>
<body>
	<%
		ArrayList<Employee> allEmp = null;
		if(request.getAttribute("allEmp") == null){
			RequestDispatcher r = request.getRequestDispatcher("fetch");
			r.forward(request, response);
		}else{
			allEmp = (ArrayList<Employee>)request.getAttribute("allEmp");
		}
	%>
    <nav>
    	<form action = "search" method = "post">
    		<input type="text" name="id">
	        <input type="submit" value="SEARCH">
    	</form>
	    <button style="width:8%;height:4%;"><a href="AddEmployee.jsp" >Add Employee</a></button>
    </nav>
    <div id = "show-table">
    	<table>
    		<tr>
	    		<th> ID </th>
	    		<th> NAME </th>
	    		<th> DATE OF JOINING </th>
	    		<th> YEAR OF EXPERIENCE </th>
	    		<th> DESIGNATION </th>
    		</tr>
    		<%for(int i = 0; i < allEmp.size(); i++){ 
    			Employee emp = allEmp.get(i);
    		%>
    			<tr>
    				<td> <%=emp.getEid() %> </td>
		    		<td> <%=emp.getEname() %> </td>
		    		<td> <%=emp.getDoj() %> </td>
		    		<td> <%=emp.getYearOfExperience() %> </td>
		    		<td> <%=emp.getDesignation() %> </td>
    			</tr>
    		<%} %>
    	</table>
    </div>
</body>
</html>