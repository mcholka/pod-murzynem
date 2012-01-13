# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

json = ActiveSupport::JSON.decode(File.read('db/seeds/producents.json'))

Producent.delete_all
producents = Array.new
 json.each do |a|
   b = Producent.create!(a)
   producents << b
 end

json = ActiveSupport::JSON.decode(File.read('db/seeds/telefons.json'))

Telefon.delete_all
telefons = Array.new
 json.each do |a|
   b = Telefon.create!(a)
   telefons << b
 end

