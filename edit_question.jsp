<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:forEach items="${edit_question}" var="eqm">
    <form action="update_question" method="post">
        <input type="hidden" value="${eqm.slno}" name="slno" readonly>
        Question:<input type="text" name="question" value="${eqm.question}"><br>
        Option1:<input type="text" name="option1" value="${eqm.option1}"><br>
        Option2:<input type="text" name="option2" value="${eqm.option2}"><br>
        Option3:<input type="text"  name="option3" value="${eqm.option3}"><br>
        Option4:<input type="text" name="option4" value="${eqm.option4}"><br>
        Answer:<input type="text" name="answer" value="${eqm.answer}"><br>
        <input type="submit" value="Update">

    </form>
</c:forEach>