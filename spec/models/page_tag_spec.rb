require 'rails_helper'

RSpec.describe PageTag, type: :model do
  it { should have_many(:user_taggings) }
end
