# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
User.create(first_name: 'Tului', last_name: 'Gantulga', username: 'tgantulga', email: 'Tului@whyknot.me', password: '123456')
User.create(first_name: 'Tony', last_name: 'King', username: 'tking', email: 'Tony@whyknot.me', password: '123456')