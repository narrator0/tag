require 'rails_helper'

RSpec.describe WebPage, type: :model do
  it { should have_many(:posts) }
  it { should have_many(:user_taggings) }
end
