# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

kayna = User.create( email: "kayna@guarany.net", password: "123")
gustavo = User.create( email: "gustavo@guarany.net", password: "456")

Question.create( title: "Quanto é 2 + 2 ?", subject: "Matemática", user_id: kayna.id)
Question.create( title: "Quanto é 2 + 4 ?", subject: "Matemática", user_id: kayna.id)
Question.create( title: "Quanto é 2 + 6 ?", subject: "Matemática", user_id: kayna.id)

Question.create( title: "Quem descobriu o Brasil ?", subject: "História", user_id: gustavo.id)
Question.create( title: "Quem descobriu a América ?", subject: "História", user_id: gustavo.id)
Question.create( title: "Quem foi Dom Pedro I", subject: "História", user_id: gustavo.id)
