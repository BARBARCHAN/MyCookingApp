$(function() {
  $('.file_select').on('change',function(e){
    var files = e.target.files;
    var d = (new $.Deferred()).resolve();
    $.each(files,function(i,file){
      d = d.then(function(){return previewImage(file)});
    });
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
    // 編集画面のイメージプレビュー下の削除ボタンが押されたらオリジナルのプレビューを消す
    $(".edit-preview").remove();
    $(".delete-btn").remove();
  });
});