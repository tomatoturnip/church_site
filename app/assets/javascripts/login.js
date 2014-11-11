$('.login_link').click(function(){

    $('.modal-body').load('/render/62805',function(result){
      $('#myModal').modal({show:true});
  });


});
