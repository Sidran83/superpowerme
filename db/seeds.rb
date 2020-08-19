# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning DB..."
Renting.destroy_all
Superpower.destroy_all
Category.destroy_all
User.destroy_all
puts "DB destroyed!"

puts "Creating users ...."

user1 = User.create!(email: "murielle@gmail.com", password: "password_user1", nickname: "Mumu")
user2 = User.create!(email: "richard@gmail.com", password: "password_password_user2", nickname: "Riton")
user3 = User.create!(email: "kevin@gmail.com", password: "password_user3", nickname: "Kev")
user4 = User.create!(email: "carla@gmail.com", password: "password_user4", nickname: "Carlita")
user5 = User.create!(email: "diego@gmail.com", password: "password_user5", nickname: "Don Diego")
user6 = User.create!(email: "germaine@gmail.com", password: "password_user6", nickname: "Mamie Germaine")
user7 = User.create!(email: "manu@gmail.com", password: "password_user7", nickname: "Hacker")

user8 = User.create!(email: "rotissor@gmail.com", password: "password_user8", nickname: "Rotissor")
user9 = User.create!(email: "bipbip@gmail.com", password: "password_user9", nickname: "Bip bip")
user10 = User.create!(email: "partyboy@gmail.com", password: "password_user10", nickname: "Party boy")
user11 = User.create!(email: "thevoice@gmail.com", password: "password_user11", nickname: "The voice")
user12 = User.create!(email: "passepartout@gmail.com", password: "password_user12", nickname: "Passe partout")
user13 = User.create!(email: "hulk@gmail.com", password: "password_user13", nickname: "Hulk")
user14 = User.create!(email: "neo@gmail.com", password: "password_user14", nickname: "Neo")
user15 = User.create!(email: "buzz@gmail.com", password: "password_user15", nickname: "Buzz")
user16 = User.create!(email: "speedster@gmail.com", password: "password_user16", nickname: "Speedster")

puts "Users created!"

puts "Creating categories..."

category1 = Category.create!(name: "Transportation", url: "cat_transportation.jpg")
category2 = Category.create!(name: "Art and culture", url: "cat_arts_and_culture.jpg")
category3 = Category.create!(name: "Daily life", url: "cat_dailylife.jpg")
category4 = Category.create!(name: "Animals and creatures", url: "cat_animals_creatures.jpg")
category5 = Category.create!(name: "Almost legal", url: "cat_almost_legal.jpg")

puts "categories created!"


puts "Creating superpowers..."

superpower1 = Superpower.new(name: "Super fast cooker", description: "Cook everything super fast", level: 3, fee: 100, url: "superpower_teleportation.jpg")
superpower1.user = user8
superpower1.category = category3
superpower1.save!

superpower2 = Superpower.new(name: "Fast and furious", description: "Teleport you anywhere you want", level: 5, fee: 5000, url: "superpower_teleportation.jpg")
superpower2.user = user9
superpower2.category = category1
superpower2.save!

superpower3 = Superpower.new(name: "Never hangovered!", description: "Drink as you want without regrets the day after", level: 4 , fee: 150, url: "superpower_teleportation.jpg")
superpower3.user = user10
superpower3.category = category3
superpower3.save!

superpower4 = Superpower.new(name: "Sing in tune", description: "Sing everything you want perfectly!", level: 2, fee: 100, url: "superpower_teleportation.jpg")
superpower4.user = user11
superpower4.category = category2
superpower4.save!

superpower5 = Superpower.new(name: "Wallbreaker", description: "Forgot your keys? I'm the solution!", level: 4, fee: 200, url: "superpower_passmurailles.jpg")
superpower5.user = user12
superpower5.category = category1
superpower5.save!

superpower6 = Superpower.new(name: "Hulk you up", description: "Lost your muscles? I rent you mine!", level: 1, fee: 50, url: "superpower_teleportation.jpg")
superpower6.user = user13
superpower6.category = category4
superpower6.save!

superpower7 = Superpower.new(name: "Super dev!", description: "Enter the matrix and code everything you want!", level: 4, fee: 250, url: "superpower_teleportation.jpg")
superpower7.user = user14
superpower7.category = category2
superpower7.save!

superpower8 = Superpower.new(name: "Buzz Lightyear", description: "To infinity... and beyond!", level: 4, fee: 700, url: "superpower_buzz_lightyear.jpg")
superpower8.user = user15
superpower8.category = category1
superpower8.save!

superpower9 = Superpower.new(name: "Speedster", description: "No more excuse, arrive on time", level: 3, fee: 200, url: "superpower_speedster.jpg")
superpower9.user = user16
superpower9.category = category1
superpower9.save!

puts "superpowers created!"
