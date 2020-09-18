class CommentsController < ApplicationController
  def new
    # binding.pry
    @comment=Comment.new
  end

  def create
    @comment=Comment.new(comment_params)
    @comment.user_id=current_user.id
    # binding.pry

    if @comment.save
      redirect_to topics_path, success: 'コメントを投稿しました'
    else
      flash[:warning]='コメント投稿に失敗しました'
      redirect_back(fallback_location: root_path)
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:content, :topic_id)
  end
end
