# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Product.delete_all
#.....
Product.create!(title: 'Skyworth 55"',

	description:
	%{<p>
		Skyworth TV is a brand new TV in town,there are Digital and Smart TVs,

		</p>},
image_url: 'phone.jpeg',

price:65000)
#.....