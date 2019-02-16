class WebPage < ApplicationRecord
  # relations
  has_many :posts
  has_many :user_taggings
end
