# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"
Listing.destroy_all
Partner.destroy_all
User.destroy_all

puts 'everything destroyed'

user1 = User.create!(email: "vendoadvertisements@gmail.com", password: "21Vend0@$$$", first_name: "Vendo", last_name: "Advertisements", address: "Bewdley DY12 1LN", owner: true, country: "England", city:"Bewdley", zip:"DY12 1LN", phone:"07904797117")
user2 = User.create!(email: "user2@gmail.com", password: "12345678", first_name: "Carl", address: "Goltsteinstr. 150 50968 Cologne", last_name: "Schierstädt", owner: false, country: "Germany", city:"Cologne", zip:"50968", phone:"07904797117")

puts 'user created'

listing1 = Listing.new(name: '1', description: 'I love cooking. I am not a professional cook but I am a good cook. I can cook anything really I just need one day preperation.', price: '42', location: 'Goltsteinstr. 150, Cologne, Germany')
listing2 = Listing.new(name: '2', description: 'I worked as a cook for more than 5 years. I can cook any french dish. My specialty is steak tartare', price: '50', location: 'Rudower Straße 44, Berlin, Germany')
listing3 = Listing.new(name: '3', description: 'I am a professioal cook since 2010. I worked in multiple micheline star restaurants. My specialty is PIGEONNEAUX TRUFFÉS À LA CRÈME', price: '45', location: 'Heerweg 671, Bremen, Germany')
listing4 = Listing.new(name: '4', description: 'I am a professioal cook since 2010. I worked in multiple micheline star restaurants. My specialty is PIGEONNEAUX TRUFFÉS À LA CRÈME', price: '45', location: 'Heerweg 671, Bremen, Germany')

puts 'listings created'

file1 = URI.open('https://cdn.pixabay.com/photo/2013/10/14/02/52/paris-195327_1280.jpg')
file2 = URI.open('https://cdn.pixabay.com/photo/2015/01/01/20/48/advertising-586130_1280.jpg')
file3 = URI.open('https://cdn.pixabay.com/photo/2017/08/06/04/58/people-2588911_1280.jpg')
file4 = URI.open('https://cdn.pixabay.com/photo/2014/12/16/09/17/billboard-570104_1280.jpg')

listing1.photo1.attach(io: file1, filename: '1.jpg', content_type: 'image/jpg')
listing2.photo1.attach(io: file2, filename: '2.jpg', content_type: 'image/jpg')
listing3.photo1.attach(io: file3, filename: '3.jpg', content_type: 'image/jpg')
listing4.photo1.attach(io: file4, filename: '4.jpg', content_type: 'image/jpg')

puts 'saving.....'

listing1.user = user1
listing2.user = user1
listing3.user = user1
listing4.user = user1

listing1.save
listing2.save
listing3.save
listing4.save

puts 'saved'
