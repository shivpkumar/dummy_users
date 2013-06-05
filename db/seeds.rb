require 'faker'

15.times do |user|
  user_params = {}

  user_params[:first_name] = Faker::Name.first_name 
  user_params[:last_name] = Faker::Name.last_name
  user_params[:email] = Faker::Internet.email
  user_params[:password] = Faker::Lorem.word

  User.create(user_params)

end
