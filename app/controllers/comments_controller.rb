class CommentsController < ApplicationController

  def create
    @comment = Comment.new(comment_params)
    @post = Post.find(params[:post_id])
    @comments = @post.comments
    if @comment.save
      flash[:notice] = 'Answer was successfully created.'
      redirect_to post_path(@post)
    else
      render template: "posts/show"
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:username, :body).merge(post: Post.find(params[:post_id]))
  end
end
