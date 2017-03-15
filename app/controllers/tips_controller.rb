class TipsController < ApplicationController

  before_action :set_tip, only: [:show, :edit, :update]

  def index
    @tips = Tip.all
  end

  def new
    @tip = Tip.new
  end

  def show
    @tip

    @author = User.find(@tip.user_id)

  end

  def create
    @tip = current_user.tips.create(tip_params)
    redirect_to @tip
  end

  def edit
    tip_id = params[:id]
    @tip = Tip.find_by_id(tip_id)
    render :edit
  end

  def update
    tip_id = params[:id]
    @tip = Tip.find_by_id(tip_id)



    @tip.update_attributes(tip_params)

    flash[:notice] = @tip

    # if @tip.update_attributes(tip_params)
    #   flash[:notice] = "edit successful"
    # else
    #   flash[:error] = "ERROR edit unsuccessful"
    # end


    redirect_to @tip
  end

  def destroy
  end

  private

  def tip_params
  #  params[:user_id] = current_user.id
    params.require(:tip).permit(:title, :body) #, :user_id)
  end

  def set_tip
    tip_id = params[:id]
    @tip = Tip.find_by_id(tip_id)
  end

end
