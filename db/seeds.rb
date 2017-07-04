# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

def random_id
	user = User.pluck(:id).sample
end

User.create([{first_name: "Viktorija",
			last_name: "Šukvietytė",
			title: Faker::Name.title,
            desc: Faker::Lorem.paragraph},
            {first_name: "Vardas",
			last_name: "Pavarde",
			title: Faker::Name.title,
            desc: Faker::Lorem.paragraph}])	



3.times do 
	Experience.create(workplace: Faker::Company.name,
					occupation: Faker::Company.profession,
					desc: Faker::Lorem.paragraph,
				 	user_id: random_id)
end

3.times do
	Education.create(university: Faker::Educator.university,
				 	course: Faker::Educator.course,
				 	user_id: random_id)
end

3.times do
	Workshop.create(title: Faker::Beer.name,
					user_id: random_id)
end

Language.create([{name:"English",
				level:"B2",
				user_id: random_id},
				{name:"Italian",
				level:"A2",
				user_id: random_id},
				{name:"Russian",
				level:"B2",
				user_id: random_id}])

3.times do
	Skill.create(title: Faker::Job.key_skill,
				 user_id: random_id)
end

3.times do
	Interest.create(title:Faker::Pokemon.name,
					user_id: random_id)
end