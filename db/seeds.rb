require_relative '../app/models/player'
require 'faker'

5.times do 
  Player.create!(
    :nickname => Faker::Lorem.word,
    :email => Faker::Internet.email,
    :password => Faker::Lorem.word
  )
end 


