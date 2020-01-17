class Api::WorkoutsController < ApplicationController
  def index
    @workouts = Workout.all
    render "index.json.jb"
  end

  def show
    @workout = Workout.where("user_id = ?", current_user.id)
    render "show.json.jb"
  end

  def create
    @workout = Workout.new(
      user_id: params[:user_id],
      workout_time: params[:workout_time],
      distance: params[:distance],
    )
    @workout.save
    # loop through params[:locations] (an array of hashes)
    data = params[:locations].map do |location|
      {
        workout_id: @workout.id,
        latitude: location.coords.latitude,
        longitude: location.coords.longitude,
      }
    end
    Coordinate.create(data)
    render "show.json.jb"
  end
end
