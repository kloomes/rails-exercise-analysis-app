class StatsController < ApplicationController

  def index
    @stats = Stat.where(user_id: current_user.id)
  end
end
