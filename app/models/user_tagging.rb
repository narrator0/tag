class UserTagging < ApplicationRecord
  # relations
  belongs_to :user
  belongs_to :page_tag
  belongs_to :web_page
end
