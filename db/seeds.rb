# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

['Sq-ft', 'Sq-yrd', 'Sq-m', 'Acre', 'Bigha', 'Hectare', 'Marla', 'Kanal', 'Biswa1', 'Biswa2', 'Ground', 'Chatak', 'Kottah', 'Marla', 'Cent', 'Perch', 'Guntha', 'Are'].each do |unit|
  Unit.find_or_create_by(name: unit)
end