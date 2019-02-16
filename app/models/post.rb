class Post < ApplicationRecord
  # relations
  belongs_to :user
  belongs_to :web_page
end
