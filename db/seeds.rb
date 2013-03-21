# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Picture.create!(
    :title => "West Yorkshire",
    :artist => "Leeds Photography",
    :url => "http://www.leedsphotography.co.uk/images/urban/crossroads.jpg"
  )

Picture.create!(
    :title => "Melbournia",
    :artist => "Heiko Waechter",
    :url => "http://vanimg.s3.amazonaws.com/urb-1.jpg"
  )

Picture.create!(
    :title => "Urban-Decay",
    :artist => "Jonas Buntenbruch",
    :url => "http://vanimg.s3.amazonaws.com/urb-8.jpg"
  )