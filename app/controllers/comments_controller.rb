class CommentsController < ApplicationController
  before_action :set_tip, only: [:create, :destroy]

  def create
    @comment = @tip.comments.create(comment_params)
    @comment.user_id = current_user.id
    if @comment.save
      redirect_to tip_path(@tip)
    else
      flash[:error] = "Error saving comment."
    end

  end

  def destroy
    @comment = @tip.comments.find(params[:id])
    @comment.destroy

    redirect_to tip_path(@tip)
  end

  private
    def comment_params
      params.require(:comment).permit(:content, :user_id, :post_id)
    end

    def set_tip
      @tip = Tip.find(params[:tip_id])
    end
end
