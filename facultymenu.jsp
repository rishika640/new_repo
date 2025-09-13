<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-LN+7fdVzj6u52u30Kp6M/trliBMCMKTyK833zpbD+pXdCLuTusPj697FH4R/5mcr" crossorigin="anonymous">


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-ndDqU0Gzau9qJ1lfW4pNLlhNTkCfHzAVBReH9diLvGRem5+R9g2FzA8ZGN954O5Q"
    crossorigin="anonymous"></script>

<header class="p-3 text-bg-dark">
    <div class="container">
        <div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start"> <a href="/"
                class="d-flex align-items-center mb-2 mb-lg-0 text-white text-decoration-none"> 
            <p>
                <% String name=(String)session.getAttribute("name");%>
                <%=name %>
            </p>
            
            </a>
            <ul class="nav col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0">
                <li><a href="/facultyhome" class="nav-link px-2 text-secondary">FacultyHome</a></li>
                
                 <li><a href="/leave_apply" class="nav-link px-2 text-white">Leave Apply</a></li> 
                    <li><a href="/uploadVideo" class="nav-link px-2 text-white">video upload</a></li> 
                     <li><a href="/f_question" class="nav-link px-2 text-white">Question upload</a></li> 
            </ul>
           
                    <div class="text-end"> 
                        
                      <a href="/profile" class="btn btn-primary">Profile</a>   

                <a href="logout" class="btn btn-warning">Logout</a>
               
               </div>
    </div>
</header>