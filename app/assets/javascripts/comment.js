$(function(){
  function buildHTML(comment){
    var html = `<div class = "show__comments--comment">
                  <p class = "comment-user"><a href = /users/${comment.user_id}>${comment.user_name}</a></p>
                  <p class = "comment-text">${comment.text}</p>
                </div>`
    return html;
  }
  $("#new_comment").on("submit",function(e){
    e.preventDefault();
    var formData = new FormData(this);
    var url = $(this).attr("action")
    $.ajax({
      url: url,
      type: "POST",
      data: formData,
      dataType: "json",
      processData: false,
      contentType: false
    })
    .done(function(data){
      var html = buildHTML(data);
      $(".show__comment--area").append(html);
      $(".new_comment_text").val("");
      $(".new_comment_btn").prop('disabled', false);
    })
    .fail(function(){
      alert('投稿に失敗しました');
    })
  })
});