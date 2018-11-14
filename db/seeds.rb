# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(
  name: "John",
  profile: Profile.create!(
    license: true,
    city: "London",
    gender: "Male",
    age: 19
  )
)

User.create!(
  name: "Jane",
  profile: Profile.create!(
    license: false,
    city: "London",
    gender: "Female",
    age: 17
  )
)

User.create!(
  name: "Rose",
  profile: Profile.create!(
    license: true,
    city: "Edinburgh",
    gender: "Female",
    age: 21
  )
)

User.create!(
  name: "Hans",
  profile: Profile.create!(
    license: true,
    city: "Berlin",
    gender: "Male",
    age: 24
  )
)

Content.create!(
  title: "London introduces new tax",
  profile: Profile.create!(
    city: "London"
  )
)

Content.create!(
  title: "New license requirements in Berlin",
  profile: Profile.create!(
    city: "Berlin",
    license: true
  )
)

Content.create!(
  title: "Women should get new immunization",
  profile: Profile.create!(
    gender: "Female"
  )
)

Content.create!(
  title: "Adults only expo opens Wednesday",
  profile: Profile.create!(
    age: 18
  )
)

Content.create!(
  title: "John is awarded highest accolade",
  profile: Profile.create!(
    age: 18,
    city: "London",
    gender: "Male",
    license: true
  )
)
