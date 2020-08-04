$(function() {

  function buildHTML(comment){
    var html = `
      <div class="comment-upper">
        <div class="comment-user">
          馬場惇史郎
        </div>
        <div class="comment-date">
          2020年08月04日 01時44分
        </div>
       </div>
       <div class="comment-lower">
          <div class="comment-text">
            aaa
          </div>
        </div>`
  
  }

  $('#post_comment').on('submit', function(e){
    e.preventDefault();
    var formData = new FormData(this);
    var url = $(this).attr('action')
    console.log(url)
    $.ajax({
      url: url,
      type: "POST",
      data: formData,
      dataType: 'json',
      processData: false,
      contentType: false
    })
    .done(function(data){
      var html = buildHTML(data);
      $('.comment-area').append(html);
      $('.textbox').val('');
      $('.comment-send-btn').prop('disabled', false);
    })
    .fail(function(){
      alert('コメントの投稿に失敗しました');
    })
  });
});