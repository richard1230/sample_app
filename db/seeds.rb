# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# 创建一个主用户
User.create!(name: "Example User",
	     email: "example@railstutorial.org",
	     password:              "foobar",
	      password_confirmation: "foobar",
	    admin: true)

# 生成一些其他用户
99.times do |n|
	name  = Faker::Name.name
	email = "example-#{n+1}@railstutorial.org"
		password = "password"
	User.create!(name:  name,
		      email: email,
		      password:              password,
		      password_confirmation: password)
end
