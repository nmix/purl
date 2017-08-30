Item.delete_all
Bucket.delete_all

[
  "Корзина 1",
  "Корзина 11",
  "public",
  "project info"
].each{ |name| Bucket.create!(name: name) }

Bucket.find_each do |bucket|
  5.times { bucket.items.create!(name: Faker::Lorem.sentence) }
end