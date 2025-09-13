<jsp:include page="studentmenu.jsp"/>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<form action="/saveStudentAnswer" method="post">
    <c:forEach var="q" items="${manage_question}">
        Qn: ${q.question}<br>
           Option1 <input type="radio" name="q${q.slno}" value="1">${q.option1}<br><br>
            Option2<input type="radio" name="q${q.slno}" value="2">${q.option2}<br><br>
            Option3<input type="radio" name="q${q.slno}" value="3">${q.option3}<br><br>
            Option4<input type="radio" name="q${q.slno}" value="4">${q.option4}<br><br>
        </div>
    </c:forEach>
    <input type="submit" value="Submit Answers">
</form>