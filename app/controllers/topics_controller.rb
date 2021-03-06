class TopicsController < ApplicationController
  before_action :require_login, only: :new

  def new
    @topic=Topic.new
  end

  def create
    # binding.pry
    # ナニコレ
    @topic=current_user.topics.new(topic_params)
    if @topic.save
      redirect_to topics_path, success: '投稿しました'
    else
      flash.now[:warning]='投稿に失敗しました'
      render :new
    end
  end

  def index
    @topics=Topic.all.includes(:favorite_users)
  end

  private

  def topic_params
    params.require(:topic).permit(:image, :description)
  end
end