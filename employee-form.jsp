<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <title>Employee Form</title>
</head>
<body>
    <h1>${employee.id == 0 ? 'Add' : 'Edit'} Employee</h1>
    <form action="EmployeeServlet" method="post">
        <input type="hidden" name="id" value="${employee.id}">
        <input type="hidden" name="action" value="${employee.id == 0 ? 'create' : 'update'}">
        Name: <input type="text" name="name" value="${employee.name}"><br>
        Email: <input type="text" name="email" value="${employee.email}"><br>
        Department: <input type="text" name="department" value="${employee.department}"><br>
        <input type="submit" value="${employee.id == 0 ? 'Add' : 'Update'}">
    </form>
</body>
</html>
