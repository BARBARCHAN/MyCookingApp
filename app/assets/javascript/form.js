// JavaScriptオンリーでプレビュー表記
// document.addEventListener('DOMContentLoaded', function(){
//   const ImageList = document.getElementById('preview')
//   document.getElementById('file-field').addEventListener('change', function(e){
//     const file = e.target.files[0];
//     const blob = window.URL.createObjectURL(file);
//     const imageElement = document.createElement('div')
//     const blobImage = document.createElement('img')
//     blobImage.setAttribute('src', blob)
//     imageElement.appendChild(blobImage)
//     ImageList.appendChild(imageElement)
//   });

//   document.getElementsByClassName('delete-btn').addEventListener('click', function(e) {
//     const img = document.getElementsByClassName('image-preview img')
//   });
// });

//jQueryを使ったプレビュー表記

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

  // 編集画面でのオリジナル画像削除
  $("#preview").on("click", ".delete-btn", function(){
    $(".edit-preview").remove();
  });
});