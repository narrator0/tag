require 'rails_helper'

RSpec.describe UserTagging, type: :model do
  it { should belong_to(:user) }
  it { should belong_to(:page_tag) }
  it { should belong_to(:web_page) }
end

