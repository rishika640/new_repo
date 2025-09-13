<jsp:include page="menu.jsp"/>

<form method="post" action="save_contact">
  Name:<input type="text" name="name"/> <br>
  Email:<input type="text" name="email"/> <br>
  Mobile:<input type="text" name="mobile"/> <br>
  Message:<textarea name="message" ></textarea>
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