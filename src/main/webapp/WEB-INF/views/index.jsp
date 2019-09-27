<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>KeepNote</title>
<style>
#customers {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 50%;
}

#customers td, #customers th {
  border: 1px solid #ddd;
  padding: 8px;
}

#customers tr:nth-child(even){background-color: #f2f2f2;}

#customers tr:hover {background-color: #ddd;}

#customers th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #4CAF50;
  color: white;
}
</style>
</head>
<body>
	<!-- Create a form which will have text boxes for Note ID, title, content and status along with a Send 
		 button. Handle errors like empty fields -->
		 <form action="notes" method="POST">
           <input type="text" name="noteId" placeholder="Enter id">
           <input type="text" name="noteTitle" placeholder="Enter title">
           <input type="text" name="noteContent" placeholder="Enter content">
           <input type="text" name="noteStatus" placeholder="Enter status">
           <input type="submit" value="Submit"><br><br>
         </form>
        <c:forEach items="${list}" var="var">
        <table id="customers">
            <tr>
               <td>${var.getNoteId()}</td>
               <td>${var.getNoteTitle()}</td>
               <td>${var.getNoteContent()}</td>
               <td>${var.getNoteStatus()}</td>
               <td>${var.getCreatedAt()}</td>
           </tr>
           </table>
           </c:forEach>
	<!-- display all existing notes in a tabular structure with Id, Title,Content,Status, Created Date and Action -->
</body>
</html>
