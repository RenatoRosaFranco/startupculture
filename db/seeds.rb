# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts "\n Start running seeds \n"

User.destroy_all
User.create([
	email: 'renato-franco@startupculture.com',
	password: '3223001r',
	password_confirmation: '3223001r'
])

puts "\n Finish running seeds \n"