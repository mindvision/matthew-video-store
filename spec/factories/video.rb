#***spec/factories/video_spec.rb***

#    t.string "title"
#    t.string "description"
#    t.string "content_rating"
#    t.integer "rating"
#    t.string "actors"
#    t.date "release_date"
#    t.string "thumbnail"
#    t.text "genre"
#    t.integer "stars"


require 'factory_bot'

FactoryBot.define do

  factory :video do |v|
    v.title { Faker::Name.title }
    v.description { Faker::Lorem.sentence }
    v.content_rating "pg"
    v.stars "8"
    v.actors { Faker::Name.name }
    v.release_date { Date.yesterday }
    v.genre "action, adventure, romance, drama"
    v.thumbnail { Faker::Internet.url }
  end
end

