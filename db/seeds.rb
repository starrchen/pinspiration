# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all
Board.destroy_all
Pin.destroy_all

martha = User.create!(email: 'martha@stewart.com', password: 'topsecret', password_confirmation: 'topsecret')

sweaters = martha.boards.create!(title: "Good Sweaters for Prison")
cableknit = sweaters.pins.create!(title: "Cable Knit", image_url: "http://leopardprintcardigan.net/wp-content/uploads/2010/08/cable-knit-cardigan-sweaters.jpg")
fairisle = sweaters.pins.create!(title: "Fair Isle", image_url: "http://in1.ccio.co/FE/wD/Z8/47f627515bb601505877c38005b8716b.jpg?iw=300")
uglyxmas = sweaters.pins.create!(title: "Ugly Christmas", image_url: "http://www.polyvore.com/cgi/img-thing?.out=jpg&size=l&tid=124059940")
