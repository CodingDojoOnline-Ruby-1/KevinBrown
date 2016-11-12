object.onclick=function(){myScript};





$('selector').click(function(e){
   e.preventDefault();
  $.ajax({
       url: "<where to post>",
       type: "POST",//type of posting the data
       data: <what to post>,
       success: function (data) {
         //what to do in success
       },
       error: function(xhr, ajaxOptions, thrownError){
          //what to do in error
       },
       timeout : 15000//timeout of the ajax call
  });

});
