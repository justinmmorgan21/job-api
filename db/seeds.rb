# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Job.create(title: "babysitting", date_time: "2024-09-27T18:00:00Z", duration: "2 hours", details: "no dinner, need to put kids to bed at 8", user_id: 1)
Job.create(title: "dog walking", date_time: "2024-09-28T11:00:00Z", duration: "20 mins", details: "2 yo bulldog 20 min walk", user_id: 2)
Job.create(title: "plant watering", date_time: "2024-10-04T00:00:00Z", duration: "3 days", details: "water all plants once a day", user_id: 1)

