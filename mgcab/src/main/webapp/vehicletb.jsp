<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table class="table">
  <thead>
    <tr>
      <th scope="col">Vehicle No</th>
      <th scope="col">Vehicle Category</th>
      <th scope="col">Vehicle Model</th>
      <th scope="col">Vehicle Brand</th>
       <th scope="col">Vehicle Color</th>
       <th scope="col">Vehicle Chassis No</th>

    </tr>
  </thead>
  <tbody>
  
  <c:forEach var="cus" items="${cust}">
  <tr>
  <td>${cus.vno}</td>
  <td>${cus.vcat}</td>
  <td>${cus.vmodel}</td>
  <td>${cus.vbrand}</td>
  <td>${cus.vcolor}</td>
  <td>${cus.vchasi}</td>

 
    
    <td>
    <form action ="delvehicle" method="post">
    <input type="hidden" name="vno" value="${cus.vno}">
    <button type="submit">delete</button>
    </form>
    </td>
  </tr>
  </c:forEach>
   
  </tbody>
</table>

</body>
</html>