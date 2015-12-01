<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Hello World</title>

<script type="text/javascript">

 function loginIntoImbibe(e)
 {
	 if(e.keyCode == 13)
	 {
	  document.toImbibe.submit();
	 }
 }
</script>

</head>
<body>
       <form name='toImbibe' action="<c:url value='j_spring_security_check' />" method="post">
            <div class="content_header_01">Login/Registration</div>     
            <p>
                If you have login id and password , you can login to portal by providing your credentials below:
                
                ${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message}
            </p> 
            <table>
            <tr>
               <td> Login Id : </td> <td> <input type="text" name="j_username" id="j_username" /></td>
               
            </tr>
            <tr>   
               <td>  Password : </td> <td><input type="password" name="j_password" id="j_password" onkeypress="javascript:loginIntoImbibe(event);"/> </td>
            </tr>
            </table>
            <div class="cleaner"></div>
    
              
            <div class="rc_btn_02">
                  <a href="#" onclick="javascript:document.toImbibe.submit()">Sign In</a>
            </div>
            </form>
</body>
</html>