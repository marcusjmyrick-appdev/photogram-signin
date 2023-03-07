class CommentsController < ApplicationController


  def create
    user_id = session.fetch(:user_id)
    photo_id = params.fetch("input_photo_id")
    body = params.fetch("input_body")

    comment = Comment.new
    comment.author_id = user_id
    comment.photo_id = photo_id
    comment.body = body
    comment.save

    redirect_to("/photos/#{photo_id}")
  end


end
