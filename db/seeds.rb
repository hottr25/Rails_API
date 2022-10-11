# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
term = ""

5.times do
    term.create(name: 'test', what: 'test1', why: 'test2', how: 'test3', example: 'test4', type_id: 'test5')
end

term