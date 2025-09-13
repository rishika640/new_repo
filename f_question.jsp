<jsp:include page="facultymenu.jsp"/>

<form method="post" action="question-doc">
  Question:<input type="text" name="question"/> <br>
  Option-A:<input type="text" name="option1"/> <br>
  Option-B:<input type="text" name="option2"/> <br>
  Option-C:<input type="text" name="option3"/> <br>
  Option-D:<input type="text" name="option4"/> <br>
    <label for="answer">Choose a answer :</label>
    <select id="answer" name="answer">
      <option value="1">A</option>
      <option value="2">B</option>
      <option value="3">C</option>
      <option value="4">D</option>
    </select>
  <input type="submit" value="submit"/>
  

</form>
<script>
  onload=function(){
    m="${msg}";
    if(m){
      alert(m);
    }
  }
</script>