$("#category").on("change", function(){
  var index = $("#category option:selected").val();
  var url_path = "/admin/products#index";
  $.ajax({
    url: url_path,
    type: "GET",
    dataType: "script",
    data: {"id": index},
  });
})
