City.create!(city: "Chicago")
City.create!(city: "New York")
City.create!(city: "Boston")
City.create!(city: "Los Angeles")

User.create!(name: "Nick", email: "nick@email.com", password: "password", profile_picture: "", city_id: 1, completed_5k: 12, completed_10k: 7, completed_marathon: 4)
User.create!(name: "Mike", email: "mike@email.com", password: "password", profile_picture: "", city_id: 4, completed_5k: 10, completed_10k: 4, completed_marathon: 2)
User.create!(name: "Alex", email: "alex@email.com", password: "password", profile_picture: "", city_id: 3, completed_5k: 1, completed_10k: 0, completed_marathon: 0)
User.create!(name: "Kevin", email: "kevin@email.com", password: "password", profile_picture: "", city_id: 2, completed_5k: 0, completed_10k: 0, completed_marathon: 0)

WeeklyStat.create!(weekly_miles: 20.55, user_id: 1, goals: 25, week_number: 1)
WeeklyStat.create!(weekly_miles: 50, user_id: 2, goals: 40, week_number: 1)
WeeklyStat.create!(weekly_miles: 15, user_id: 3, goals: 20, week_number: 1)
WeeklyStat.create!(weekly_miles: 7.5, user_id: 4, goals: 10, week_number: 1)

Race.create!(name: "Shamrock Beer Run", race_type: "5k", date: Time.new(2020, 3, 07), city_id: 1)
Race.create!(name: "Chi Town Half Marathon and 10K", race_type: "10k", date: Time.new(2020, 4, 04), city_id: 1)
Race.create!(name: "Cinco de Miler", race_type: "5k", date: Time.new(2020, 5, 02), city_id: 1)
Race.create!(name: "Barrington Mothers Day 5K", race_type: "5k", date: Time.new(2020, 5, 10), city_id: 1)
Race.create!(name: "Soldier Field 10 Mile", race_type: "10k", date: Time.new(2020, 5, 23), city_id: 1)
Race.create!(name: "Bank of America Chicago Marathon", race_type: "Marathon", date: Time.new(2020, 10, 13), city_id: 1)
Race.create!(name: "Tom Hamlin January Freeze 10K Series", race_type: "10k", date: Time.new(2020, 1, 25), city_id: 2)
Race.create!(name: "Icebreaker Marathon", race_type: "Marathon", date: Time.new(2020, 1, 26), city_id: 2)
Race.create!(name: "City Running Tours - Brooklyn Bridge Running Tour", race_type: "10k", date: Time.new(2020, 2, 21), city_id: 2)
Race.create!(name: "Mustache March 5K", race_type: "5k", date: Time.new(2020, 3, 28), city_id: 2)
Race.create!(name: "NYCRUNS Queens Half Marathon", race_type: "Marathon", date: Time.new(2020, 4, 04), city_id: 2)
Race.create!(name: "The Bamboozled IPA Pre-Game 5K in Weymouth", race_type: "5k", date: Time.new(2020, 2, 02), city_id: 3)
Race.create!(name: "Running Of The Leprechauns 5K", race_type: "5k", date: Time.new(2020, 3, 15), city_id: 3)
Race.create!(name: "Boston Marathon", race_type: "Marathon", date: Time.new(2020, 4, 20), city_id: 3)
Race.create!(name: "Super Bowl Sprint", race_type: "5k", date: Time.new(2020, 2, 02), city_id: 4)
Race.create!(name: "Valentine's Run", race_type: "5k", date: Time.new(2020, 2, 07), city_id: 4)
Race.create!(name: "The Rabbit Run 5K", race_type: "5k", date: Time.new(2020, 4, 1), city_id: 4)

RaceWatchlist.create!(user_id: 1, race_id: 1, result_time: "00:20:00")
RaceWatchlist.create!(user_id: 1, race_id: 2, result_time: "")
RaceWatchlist.create!(user_id: 1, race_id: 4, result_time: "")
RaceWatchlist.create!(user_id: 1, race_id: 6, result_time: "")
RaceWatchlist.create!(user_id: 2, race_id: 5, result_time: "04:25:00")
RaceWatchlist.create!(user_id: 3, race_id: 4, result_time: "05:30:00")
RaceWatchlist.create!(user_id: 4, race_id: 3, result_time: "02:20:00")

Post.create!(post: "This is the very first Chicago forum post!", user_id: 1, city_id: 1)
Post.create!(post: "This is the very first New York forum post!", user_id: 4, city_id: 2)
Post.create!(post: "This is the very first Boston forum post!", user_id: 3, city_id: 3)
Post.create!(post: "This is the very first Los Angeles forum post!", user_id: 2, city_id: 4)

Comment.create!(comment: "This is the first comment!", post_id: 1, user_id: 1)
Comment.create!(comment: "This is the second comment!", post_id: 1, user_id: 2)
Comment.create!(comment: "This is the third comment!", post_id: 1, user_id: 3)
Comment.create!(comment: "This is the first comment!", post_id: 2, user_id: 4)

Workout.create!(distance: 1.0, user_id: 1, workout_time: "00:07:00")
Workout.create!(distance: 0.7, user_id: 1, workout_time: "00:05:50")
Workout.create!(distance: 2, user_id: 3, workout_time: "00:16:23")
Workout.create!(distance: 1.75, user_id: 4, workout_time: "00:25:41")

Coordinate.create!(Latitude: 41.8921, Longitude: -87.6348, workout_id: 1)
Coordinate.create!(Latitude: 41.8921, Longitude: -87.6353, workout_id: 1)
Coordinate.create!(Latitude: 41.8922, Longitude: -87.6360, workout_id: 1)

Coordinate.create!(Latitude: 41.8925, Longitude: -87.6349, workout_id: 1)
Coordinate.create!(Latitude: 41.8921, Longitude: -87.6346, workout_id: 1)
Coordinate.create!(Latitude: 41.8944, Longitude: -87.6237, workout_id: 2)
Coordinate.create!(Latitude: 41.8835, Longitude: -87.6282, workout_id: 2)
Coordinate.create!(Latitude: 41.8960, Longitude: -87.6240, workout_id: 2)
Coordinate.create!(Latitude: 41.8956, Longitude: -87.6246, workout_id: 2)
Coordinate.create!(Latitude: 41.8945, Longitude: -87.6246, workout_id: 2)
Coordinate.create!(Latitude: 41.8944, Longitude: -87.6235, workout_id: 2)

Badge.create!(name: "Complete a marathon!")
Badge.create!(name: "Complete 3 marathons!")
Badge.create!(name: "Complete 10 5Ks!")
Badge.create!(name: "Complete 5 10Ks!")

CompletedBadge.create!(user_id: 1, badge_id: 1)
CompletedBadge.create!(user_id: 2, badge_id: 1)
CompletedBadge.create!(user_id: 2, badge_id: 3)
CompletedBadge.create!(user_id: 1, badge_id: 2)
CompletedBadge.create!(user_id: 1, badge_id: 3)
CompletedBadge.create!(user_id: 1, badge_id: 4)

Shoe.create!(name: "Brooks Ghost 12", user_id: 1, distance: 10.0)
Shoe.create!(name: "Adidas Ultraboost 19", user_id: 1, distance: 50.0)
Shoe.create!(name: "Nike Epic React Flyknit 2", user_id: 1, distance: 200.0)
