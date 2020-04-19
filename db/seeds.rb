# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(
  email: "karl@karl.com",
  password: "password",
  name: "Karl Loomes",
  date_of_birth: "1984-03-07",
  height: 182,
  gender: "Male"
  )

Stat.create(
  date: "2020-04-02",
  time: "11:03",
  weight: 84,
  body_fat: 25,
  lean_mass: 63,
  bmi: 26,
  user_id: 1
  )

Stat.create(
  date: "2020-03-28",
  time: "10:00",
  weight: 81,
  body_fat: 24,
  lean_mass: 61,
  bmi: 24,
  user_id: 1
  )

Stat.create(
  date: "2020-03-12",
  time: "10:33",
  weight: 79,
  body_fat: 22,
  lean_mass: 65,
  bmi: 23,
  user_id: 1
  )

Stat.create(
  date: "2020-03-01",
  time: "09:08",
  weight: 82,
  body_fat: 22,
  lean_mass: 67,
  bmi: 24,
  user_id: 1
  )

CardioWorkout.create(
  workout_type: "Run",
  date: "2020-04-01",
  time: "16:44",
  training_type: "Long",
  duration_hours: 1,
  duration_minutes: 3,
  duration_seconds: 23,
  distance: 10.01,
  avg_pace_minute: 6,
  avg_pace_seconds: 45,
  max_pace_minute: 5,
  max_pace_seconds: 12,
  avg_speed: 13.2,
  max_speed: 15.4,
  avg_hr: 179,
  max_hr: 185,
  kcal: 645,
  ascent: 23,
  descent: 21,
  running_index: 32,
  notes: "Leg Hurt half way through run but got better",
  user_id: 1
  )

CardioWorkout.create(
  workout_type: "Run",
  date: "2020-03-27",
  time: "17:34",
  training_type: "Hard",
  duration_hours: 0,
  duration_minutes: 56,
  duration_seconds: 3,
  distance: 6.01,
  avg_pace_minute: 5,
  avg_pace_seconds: 5,
  max_pace_minute: 4,
  max_pace_seconds: 47,
  avg_speed: 14.2,
  max_speed: 17.4,
  avg_hr: 183,
  max_hr: 186,
  kcal: 435,
  ascent: 23,
  descent: 21,
  running_index: 32,
  notes: "Leg Hurt half way through run but got better",
  user_id: 1
  )

CardioWorkout.create(
  workout_type: "Cross Trainer",
  date: "2020-03-12",
  time: "14:40",
  training_type: "Steady",
  duration_hours: 0,
  duration_minutes: 58,
  duration_seconds: 23,
  distance: 10.01,
  avg_pace_minute: 6,
  avg_pace_seconds: 45,
  max_pace_minute: 5,
  max_pace_seconds: 12,
  avg_speed: 13.2,
  max_speed: 15.4,
  avg_hr: 179,
  max_hr: 185,
  kcal: 645,
  ascent: 23,
  descent: 21,
  running_index: 32,
  notes: "Chnaged to intervals at one point",
  user_id: 1
  )

WeightsWorkout.create(
  date: "2020-04-19",
  time: "16:34",
  workout_type: "Heavy",
  duration_hours: 0,
  duration_minutes: 46,
  duration_seconds: 23,
  avg_hr: 145,
  max_hr: 164,
  kcal: 324,
  notes: "Changed order of exercises",
  user_id: 1
  )

WeightsWorkout.create(
  date: "2020-04-10",
  time: "16:24",
  workout_type: "Bodyweight",
  duration_hours: 1,
  duration_minutes: 03,
  duration_seconds: 26,
  avg_hr: 145,
  max_hr: 164,
  kcal: 324,
  notes: "Cut pullups short due to pain",
  user_id: 1
  )

WeightsWorkout.create(
  date: "2020-04-05",
  time: "13:34",
  workout_type: "Heavy",
  duration_hours: 0,
  duration_minutes: 51,
  duration_seconds: 49,
  avg_hr: 145,
  max_hr: 164,
  kcal: 324,
  notes: "Extra squats",
  user_id: 1
  )

squat = [1, 2, 3]
squat.each do |exc|
  Exercise.create(
    name: "Squat",
    weights_workout_id: exc
    )
end

bench = [1, 2, 3]
bench.each do |exc|
  Exercise.create(
    name: "Bench Press",
    weights_workout_id: exc
    )
end

curls = [1, 2, 3]
curls.each do |exc|
  Exercise.create(
    name: "Dumbbell Curls",
    weights_workout_id: exc
    )
end

press = [1, 2, 3]
press.each do |exc|
  Exercise.create(
    name: "Shoulder Press",
    weights_workout_id: exc
    )
end

crunch = [1, 2, 3]
crunch.each do |exc|
  Exercise.create(
    name: "Crunch",
    weights_workout_id: exc
    )
end

setset = [1, 2, 3, 4, 5]
setset.each do |exc|
    3.times do
    ExerciseSet.create(
      weight: 45,
      reps: 5,
      exercise_id: exc
      )
  end
end

