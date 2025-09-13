<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

 <c:forEach items="${edit_leave}" var="eu">
    <form action="update_leave" method="post">
        <input type="hidden" value="${eu.leave_id}" name="leave_id" readonly>
        Name:<input type="text" name="LeaveId" value="${eu.leave_name}"><br>
     
        <input type="submit" value="Update">

    </form>
 </c:forEach>