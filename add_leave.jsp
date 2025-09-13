<jsp:include page="adminmenu.jsp"/>

<form action="save_leave" method="post">
LeaveId: <input type="text" name="leave_id"> <br>
LeaveName: <input type="text" name="leave_name"><br>
<input type="submit" value="AddLeave"/>


</form>

   <script>
        onload=function(){
            m="${msg}";
            if(m){
                alert(m);
            }
        }
    </script>