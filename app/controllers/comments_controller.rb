class CommentsController < ApplicationController
  before_action :set_tip, only: [:create, :destroy]
  before_action :require_login, only: [:new, :create, :destroy]

  def new
    @comment = Comment.new()
  end

  def create
    @comment = @tip.comments.create(comment_params)
    @comment.user_id = current_user.id
    current_user.comments << @comment
    if @comment.save
      redirect_to tip_path(@tip)
    end

  end

  def destroy
    @comment = @tip.comments.find(params[:id])
    if @comment.destroy
      redirect_to tip_path(@tip)
    end
  end

  private
    def comment_params
      params.require(:comment).permit(:content, :user_id, :tip_id)
    end

    def set_tip
      @tip = Tip.find(params[:tip_id])
    end

    def set_comment
      @comment = Comment.find_by_id(params[:id])
    end
end
