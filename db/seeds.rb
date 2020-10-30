
User.destroy_all
Tag.destroy_all
City.destroy_all
Potin.destroy_all

require 'faker'

10.times do
	User.create!(password: Faker::Lorem.characters(number: 10), first_name: Faker::Name.first_name, last_name: Faker::Name.last_name,  description: Faker::Lorem.sentence, email: Faker::Internet.email, age: rand(20..40))
end
tp User.all

10.times do
	Tag.create!(title: Faker::Lorem.word)
end
tp Tag.all

10.times do
	City.create!(name: Faker::Address.city, zip_code: Faker::Address.zip)
end
tp City.all

20.times do
	Potin.create!(title: Faker::Lorem.word, content: Faker::Lorem.sentence, user_id: User.all.sample.id)
end
tp Potin.all

Potin.all.each do |p|
	Taggossip.create!(tag_id: Tag.all.sample.id, potin_id: p.id)
end
