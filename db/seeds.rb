# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


teas = FactoryBot.create_list(:tea, 5)
customer = FactoryBot.create_list(:customer, 5)
subscription = FactoryBot.create_list(:subscription, 5, customer_id: 1)