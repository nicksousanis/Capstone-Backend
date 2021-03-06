class Api::WorkoutsController < ApplicationController
  def index
    @workouts = Workout.where("user_id = ?", current_user.id)
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
    # index = 0
    # while index < params[:locations].length
    #   Coordinate.create(
    #     workout_id: 1,
    #     latitude: params[:locations][index][coords].latitude,
    #     longitude: params[:locations][index].coords.longitude,
    #   )
    #   index += 1
    # end
    data = params[:locations].map do |location|
      {
        workout_id: @workout.id,
        Latitude: location["coords"]["latitude"],
        Longitude: location["coords"]["longitude"],
      }
    end
    puts "-" * 50
    pp data
    puts "-" * 50
    Coordinate.create(data)
    render "show.json.jb"
  end

  def destroy
    @workout = Workout.find_by(id: params[:id])
    @workout.destroy
  end
end
