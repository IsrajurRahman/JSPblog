<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="postb" method="post">
<table style="width:100%">
  <tr>
    <th>Date</th>
    <td><input type="text" name="date" /></td>

  </tr>
  <tr>
  <th>Title</th>
    <td><input type="text" name="title" /></td>
  </tr>
  <tr>
    <th>Description</th>
    <td><textarea type="text" name="description"></textarea></td>
  </tr>
  <br>
    <tr>
     <th></th>
    <td><br><input type="submit" value="POST"/></td>
  </tr>
</table>
</form>

</body>
</html>