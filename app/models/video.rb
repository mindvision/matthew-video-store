class Video < ApplicationRecord
  validates_uniqueness_of :title
end
