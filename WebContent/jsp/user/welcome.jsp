<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript">
 function logoutUser(logoutUrl)
 {
	 document.f.action = '<%=request.getContextPath()%>/userLogin/'+logoutUrl;
	 document.f.submit();
 }

 
</script>

</head>
<body>
 Logged in User
 
  <form action="#" method="get" name="f">
                         
              <a href="#" onclick="javascript:logoutUser('j_spring_security_logout')"> Logout</a>
             </form>
</body>
</html>