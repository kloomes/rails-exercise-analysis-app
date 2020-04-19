class UsersController < ApplicationController
  def show
    @user = current_user
    @workouts = CardioWorkout.order(:date).last(5) + WeightsWorkout.order(:date).last(5)
    @results = @workouts.sort_by { |obj| obj.date }
    @results.sort! { |x, y| y.date <=> x.date }
    @latest_stats = Stat.order(:date).last
  end
end
