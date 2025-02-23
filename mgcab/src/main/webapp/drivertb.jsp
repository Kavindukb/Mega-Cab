<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
</head>
<body>
<table class="table">
  <thead>
    <tr>
      <th scope="col">Driver ID</th>
      <th scope="col">Driver Name</th>
      <th scope="col">Driver Address</th>
      <th scope="col">Driver TP No</th>
      <th scope="col">Driver NIC No</th>
      <th scope="col">Driver Licence No</th>

    </tr>
  </thead>
  <tbody>
  
  <c:forEach var="cus" items="${cust}">
  <tr>
  <td>${cus.drid}</td>
  <td>${cus.dname}</td>
  <td>${cus.daddress}</td>
  <td>${cus.dtpno}</td>
  <td>${cus.dnic}</td>
  <td>${cus.dlno}</td>

 
    
    <td>
    <form action ="" method="post">
    <input type="hidden" name="drid" value="${cus.drid}">
    <button type="submit">delete</button>
    </form>
    </td>
  </tr>
  </c:forEach>
   
  </tbody>
</table>
</body>
</html>