<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script>
    $(document).ready(function(){
        $("#s_id").change(function(){
            s_id=$(this).val();
            alert(s_id);
            $.ajax({
                url:"getbatch_s",
                type:"POST",
                dataType:"JSON",
                data:{s_id:s_id},
                success:function(res){
                    op="";
                    $.each(res,function(key,data){
                        op=op+"<option value="+data.b_id+">"+data.batch_name+"</option>"
                    })
                    $("#b_id").html(op);
                }
            })
        })
            $("#b_id").change(function(){
                b_id=("#b_id").val();
                 $.ajax({
                url:"getstudentatt",
                type:"POST",
                dataType:"JSON",
                data:{s_id:s_id ,b_id:b_id},
                success:function(res){
                    console.log(res);
                    var table="<table border=1>";
                        table +="<tr><th>Id</th><th>Email</th><th>status</th><th>Action</th></tr>";
                        $.each(res,function(key,data){
                            table+="<tr>";
                            table+="<td><input type='hidden' name='emails' value='"+data.email+"'/>"
                            +data.email+"</td></tr>";
                            table+="</tr>";
                            table+="<td>"+data.status+"</td>"
                            table+="<td>"+data.id+"</td>"
                            table+="<td>";
                            table+="input type='submit' name='btn' value='present'/>";
                             table+="input type='submit' name='btn' value='absent'/>";
                             table+="</td>";
                             table+="</tr>";
                        })
                        table+="</table>";
                        $("#studentlist").html(table);

                }
                
            })
        })
    })
</script>
<form action="update_attendence"  method="post">
    <label for="s_id">subject</label>
    <select id="s_id" name="s_id">
        <c:forEach items="${sl}" var="l_s">
        <option value="$l_s.s_id">${l_s.s_name}</option>

        </c:forEach>

    </select>
    <select id="b_id" name="b_id"></select>
    <div id="studentlist"></div>
    <input type="submit" value="submit">

</form>