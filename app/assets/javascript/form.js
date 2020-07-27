$(function() {
  $('.file_select').on('change',function(e){
    var files = e.target.files;
    var d = (new $.Deferred()).resolve();
    $.each(files,function(i,file){
      d = d.then(function(){return previewImage(file)});
    });
    // var html = `<div class="delete-btn">削除</div>`
    //   $(".image-preview").append(html);
  })

  var previewImage = function(imageFile){
    var reader = new FileReader();
    var img = new Image();
    var def =$.Deferred();
    reader.onload = function(e){
      $('#preview').append(img);
      img.src = e.target.result;
      def.resolve(img);
    };
    reader.readAsDataURL(imageFile);
    return def.promise();
  }

  $("#preview").on("click", ".delete-btn", function(){
    // var img = $(".image-preview img");
    // $(".image-preview").remove(img);
    $(".edit-preview").remove();
  });
});