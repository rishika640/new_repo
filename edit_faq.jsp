<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

 <c:forEach items="${edit_faq}" var="eu">
    <form action="update_faq" method="post">
        <input type="hidden" value="${eu.id}" name="id" readonly>
        Question:<input type="text" name="question" value="${eu.question}"><br>
        Answer:<input type="text" name="answer" value="${eu.answer}"><br>
       
       
        <input type="submit" value="Update">

    </form>
 </c:forEach>