<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Agregar materia cursada</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/GuardarMateriaCur">
	<table>
		<tr>
		<th>A&ntilde;o</th>
		<th><input type="number" name="ano"></th>
	</tr>
	
	<tr>
		<th>Periodo</th>
		<th><input type="number" name="periodo"></th>
	</tr>
	
	<tr>
		<th>Nota</th>
		<th><input type="number" name="nota"></th>
	</tr>
	<tr>
		<th>Materia</th>
		<th>
		<select name="materia">
			<c:forEach items="${materia}" var = "i">
  				<option value="${i.id }">${i.descripcion}</option>
			</c:forEach>
		</select>
		</th>
	</tr>
	
	</table>
	<input type="text" name="id" value="${id }" style="visibility:hidden; width: 0px;"/>
	<input type="submit" value="Crear"/>
</form>
</body>
</html>