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

# CardioWorkout.create(
#   workout_type: "Run",
#   date: "2020-04-01",
#   time: "16:44",
#   training_type: "Long",
#   duration_hours: 1,
#   duration_minutes: 3,
#   duration_seconds: 23,
#   distance: 10.01,
#   avg_pace:
#   )








