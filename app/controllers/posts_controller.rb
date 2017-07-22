class PostsController < ApplicationController
  def index
    @topic = Topic.find(params[:topic_id])
    @posts = @topic.posts
  end

  def show
    @post = Post.find(params[:id])
    @comments = @post.comments
  end

  def new
  end

  def create
  end
end
