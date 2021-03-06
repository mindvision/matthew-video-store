#***spec/factories/video_spec.rb***

#    t.string    "title"
#    t.string    "description"
#    t.string    "content_rating"
#    t.integer   "rating"
#    t.string    "actors"
#    t.date      "release_date"
#    t.string    "thumbnail"
#    t.text      "theme"
#    t.integer   "stars"


require 'factory_bot'

FactoryBot.define do

  factory :video do |v|
    v.title { Faker::Name.title }
    v.description { Faker::Lorem.sentence }
    v.content_rating "pg"
    v.stars { rand(0..10) }
    v.actors { Faker::Name.name }
    v.release_date { Date.yesterday }
    v.theme "action, adventure, romance, drama"
    v.thumbnail { "https://images-na.ssl-images-amazon.com/images/M/MV5BZThlYWFmNDYtNDYzMy00YjMxLWE3NDctMjQ0MmE1ZmIzNTIwXkEyXkFqcGdeQXVyMDM1MzIyMQ@@._V1_SX300.jpg" } 
#    v.thumbnail { "noimage.png" } #{ Faker::Internet.url }
  end
end

