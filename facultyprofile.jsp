<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.*" %>
<jsp:include page="facultymenu.jsp"/>
<c:choose>
    <c:when test="${not empty userprofile and not empty userprofile[0].Photo}">
        <img src="data:image/jpeg;base64,${Base64.getEncoder().encodeToString(userprofile[0].photo)}"width="100" height="100"/>
    </c:when>
    <c:otherwise>
        <img src="data:image/jpeg;base64, ${'defultImageBase64'}" width="100" height="100" />
    </c:otherwise>
</c:choose>
Name: ${userprofile[0].name}
<br>
Email: ${userprofile[0].email}
<br>
Age: ${userprofile[0].age}
<br>
Role: ${userprofile[0].role}

<form action="upload" method="post" enctype="multipart/form-data">
    Photo:<input type="file" name="f">
    Age:<input type="text" name="age">
    <input type="submit" value="Update Profile">
</form>
    <script>
        onload=function(){
            m="${msg}";
            if(m){
                alert(m);
            }
        }
    </script>