# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

beers = Beer.create([
		{name: 'Trappistes 8', brewery: 'Braserie de Rochefort', style: 'Belgian Trappist strong ale', price: "8.00"},
		{name: 'Its Alive?', brewery: 'Mikkeller', style: 'Belgian Wild Ale', price: "20.00"},
		{name: 'High Life', brewery: 'Miller', style: 'Piss', price: '1.99'}
	])