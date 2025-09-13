<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

 <c:forEach items="${edit_video}" var="ev">
    <form action="update_video" method="post">
        <input type="hidden" value="${ev.teacher_id}" name="teacher_id" readonly>
        VideoName:<input type="file" name="videoFile" value="${ev.video_name}"><br>

        <input type="submit" value="Update">

    </form>
 </c:forEach>