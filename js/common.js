$(function(){
  var anchors = $("#dl-tb td a").addClass("btn");
  anchors.filter("a[href='']").addClass("disabled");
  $(".collapse").collapse();
})

