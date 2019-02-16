# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create(name: 'Test Account', email: 'test@gmail.com', password: 'testtest')

10.times do
  WebPage.create(url: Faker::Internet.url)
end

page_ids = WebPage.pluck(:id)

100.times do
  user.posts.create(
    title: Faker::Lorem.sentence,
    content: Faker::Lorem.paragraph,
    web_page_id: page_ids.sample
  )
end

PageTag.create([
 { name: 'racist' },
 { name: 'hate speech' },
 { name: 'fake information' },
])
