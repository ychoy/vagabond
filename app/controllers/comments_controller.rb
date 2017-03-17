class CommentsController < ApplicationController
  before_action :set_tip, only: [:create, :destroy]
  before_action :require_login, only: [:create, :destroy]

  def create
    @comment = @tip.comments.create(comment_params)
    @comment.user_id = current_user.id
    if @comment.save
      redirect_to tip_path(@tip)
    else
      flash[:error] = @comment.errors.full_messages.join(", ")
    end

  end

  def destroy
    @comment = @tip.comments.find(params[:id])
    if @comment.destroy
      redirect_to tip_path(@tip)
    else
      flash[:error] = @comment.errors.full_messages.join(", ")
      redirect_to tip_path(@tip)
    end
  end

  private
    def comment_params
      params.require(:comment).permit(:content, :user_id, :post_id)
    end

    def set_tip
      @tip = Tip.find(params[:tip_id])
    end
end
