# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Cat.destroy_all
c = Cat.new(name: 'Master meow', birth_date: '1969/04/20', color: 'red', sex: 'F', description: 'can kick you higher that a tree')
c.save!