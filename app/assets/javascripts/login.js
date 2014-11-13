$(document).ready(function(e) {
  e.preventDefault()
  $(function(){
      $("#loginmodal").modal({show:false})
    // $("#loginmodal").modal({
    //   show:true,
    //   backdrop: 'static',
    //   keyboard: true
    //   });
  })

  $(function(){
    $("#signupmodal").modal({show:false });
  })
});
