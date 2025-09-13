<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

 <c:forEach items="${edit_user}" var="eu">
    <form action="update_user" method="post">
        <input type="hidden" value="${eu.id}" name="id" readonly>
        Name:<input type="text" name="name" value="${eu.name}"><br>
        Email:<input type="text" name="email" value="${eu.email}"><br>
        Mobile:<input type="text" name="mobile" value="${eu.mobile}"><br>
        Roll:<input type="text"  name="role" value="${eu.role}"><br>
        Status:<input type="text" name="status" value="${eu.status}"><br>
        <input type="submit" value="Update">

    </form>
 </c:forEach>