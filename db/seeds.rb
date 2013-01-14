# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

users = [{login: "Admin", first: "Admin", last: "Admin", password: "adminpassword", password_confirmation: "adminpassword", admin: true, mobile: "", tel: "", address: "", mail: "admin@carkeeper.com"},
	 {login: "Aser", first: "Aser", last: "Faisal", password: "passwordaser", password_confirmation: "passwordaser", admin: false, mobile: "012", tel: "012", address: "11 Maadi", mail: "aser.maksoud@gmail.com"},
	 {login: "Ahmed", first: "Ahmed", last: "Atef", password: "passwordahmed", password_confirmation: "passwordahmed", admin: false, mobile: "010", tel: "010", address: "50 Mohandseen", mail: "ahmed.s3lim@gmail.com"}
	]

users.each do |user|
  User.create!(user)
end


cars = [{datein: "2012-12-23 20:42:00", brand: "Toyota", carmodel: "Lexus", year: 2000, cc: 1500, used: false, km: 1000.0, user_id: 3, comment: "first car", pic_file_name: "26728901301020130120270390xum0tnw.jpg", pic_content_type: "image/jpeg", pic_file_size: 49987, price: "65000"},
        {datein: "2012-12-23 20:42:00", brand: "Honda", carmodel: "Civic", year: 2005, cc: 1500, used: true, km: 2000.0, user_id: 2, comment: "nothing", price: "65000"},
	{datein: "2012-12-24 20:42:00", brand: "Fiat", carmodel: "128", year: 1995, cc: 1200, used: true, km: 50000.0, user_id: 1, comment: "second car", price: "65000"},
	{datein: "2012-12-23 20:42:00", brand: "Toyota", carmodel: "Lexus", year: 2000, cc: 1500, used: false, km: 1000.0, user_id: 1, comment: "first car", price: "65000"},
        {datein: "2012-12-23 20:42:00", brand: "Honda", carmodel: "Civic", year: 2005, cc: 1500, used: true, km: 2000.0, user_id: 2, comment: "nothing", price: "65000"},
        {datein: "2012-12-24 20:42:00", brand: "Fiat", carmodel: "128", year: 1995, cc: 1200, used: true, km: 50000.0, user_id: 1, comment: "second car", price: "65000"}
    	  ]

cars.each do |car|
  Car.create!(car)
end


