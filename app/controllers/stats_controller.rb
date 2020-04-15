class StatsController < ApplicationController

  def index
    @stats = Stat.where(user_id: current_user.id)
  end

  def new
    @stat = Stat.new
    @user = User.find(params[:user_id])
  end

  def create
    @stat = Stat.new(stat_params)
    @user = User.find(params[:user_id])
    @stat[:user_id] = @user.id
    @stat[:lean_mass] = (((100 - @stat.body_fat) / 100) * @stat.weight).truncate(2)
    @stat[:bmi] = @stat.weight / ((@user.height / 100) ** 2)
    if @stat.save
      redirect_to user_stats_path(current_user.id)
    else
      render :new
    end
  end

  def edit
    @stat = Stat.find(params[:id])
    @user = User.find(params[:user_id])
  end

  def update
    @stat = Stat.find(params[:id])
    @stat.update_attributes(stat_params)
    @stat.save
    redirect_to user_stats_path(current_user.id)
  end

  def destroy
    @stat = Stat.find(params[:id])
    @stat.destroy
    redirect_to user_stats_path(current_user.id)
  end

  private

  def stat_params
    params.require(:stat).permit(:date, :time, :weight, :body_fat, :lean_mass)
  end
end
