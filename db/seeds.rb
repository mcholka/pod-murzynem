#This file should contain all the record creation needed to seed the database with its default values.
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
   p = Producent.create!(a)
   producents << p
 end
