Item.delete_all
Bucket.delete_all
User.delete_all

User.create!(email: "user@example.com", password: "123123")
3.times { User.create!(email: Faker::Internet.email(Faker::Name.last_name), password: "123123") }

User.find_each do |user|
  3.times{ user.buckets.create!(name: Faker::Lorem.word) }
end
