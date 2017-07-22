class PostsController < ApplicationController
  def index
    @topic = Topic.find(params[:topic_id])
    @posts = @topic.posts
    @post = Post.new
  end

  def show
    @post = Post.find(params[:id])
    @comments = @post.comments
    @comment = Comment.new
  end

  def new
    @topic = Topic.find(params[:topic_id])
    @post = Post.new
  end

  def create
    @topic = Topic.find(params[:topic_id])
    @post = Post.new(post_params)
    @posts = @topic.posts
    if @post.save
      redirect_to @post
    else
      render action: "index"
    end
  end

  private
  def post_params
    params.require(:post).permit(:title, :body, :username).merge(topic: Topic.find(params[:topic_id]))
  end

end
