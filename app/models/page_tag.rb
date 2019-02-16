class PageTag < ApplicationRecord
  # relations
  has_many :user_taggings
end
