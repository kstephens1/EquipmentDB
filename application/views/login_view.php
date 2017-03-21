<div class="container">

        <div class="page-header">
          <h1>Login</h1>
        </div>
<form name="input" action="/admin/auth" role="form" id="form" method="post">
  <div class="form-group">
<!--     <label for="email">Email:</label> -->
    <input type="email" name="email" id="email" class="form-control" placeholder="Email" autocomplete="off" autofocus required value="">
  </div>
  <div class="form-group">
<!--     <label for="firstname">Password:</label> -->
    <input type="password" name="password" class="form-control" id="password" placeholder="Password" required value=""/>
  </div>

 <input class="button btn btn-primary btn-lg" type="submit" id="formbutton" value="Sign In"></button>
<?

if (strpos(uri_string(),'invalid') !== false) {
?>
<div class="alert alert-danger">
  Invalid Login!
</div>

<?

}


?>


</form>


<script type="text/javascript">

// $('#formbutton').submit(function(event){
//     event.preventDefault();
    // var email = $('#emailaddress').val();
    // $.ajax({
    //     type:"GET",
    //     url: "doSubscribe/",
    //     data: {email: email},
    //     success: function(result){
    //         $('#subResult').html("works");
    //     }
    // });
//})

</script>

</div><!--from container-->
