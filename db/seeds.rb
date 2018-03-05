# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

tasks = Task.create([
    { name: 'Clean the house', date: '2018-02-10', complete: true },
    { name: 'Pay Bills', date: '2018-02-10', complete: false },
    { name: 'Cook Lunch', date: '2018-02-11', complete: false },
    { name: 'Cook Dinner', date: '2018-02-11', complete: false },
    { name: 'Fetch Billy', date: '2018-02-11', complete: false }
  ])
