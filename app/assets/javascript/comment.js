$(function() {

  function buildHTML(comment){
    var html = `
      <div class="comment-area">
        <div class="comment-upper">
          <div class="comment-user">
            ${comment.user_nickname}
          </div>
          <div class="comment-date">
            ${comment.created_at}
          </div>
        </div>
        <div class="comment-lower">
          <div class="comment-text">
            ${comment.comment}
          </div>
        </div>
      </div>`
    return html;
  }

  $('#post_comment').on('submit', function(e){
    e.preventDefault();
    var formData = new FormData(this);
    var url = $(this).attr('action')
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
      // console.log(html)
      $('.comment-area').append(html);
      $('.textbox').val('');
      $('.comment-send-btn').prop('disabled', false);
    })
    .always(function(){
      $('form')[0].reset();
    })
    .fail(function(){
      alert('コメントの投稿に失敗しました');
    })
  });
});