# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Bird.destroy_all
Tree.destroy_all

tree1 = Tree.create({species: "Oak", age: 100, height: 35})
tree2 = Tree.create({species: "Fir", age: 200, height: 75})
tree3 = Tree.create({species: "Maple", age: 50, height: 25})

bird1 = Bird.create({species: "Cardinal", age: 1, color: "red", tree: tree1})
bird2 = Bird.create({species: "Blue Jay", age: 2, color: "blue", tree: tree2})
bird3 = Bird.create({species: "Oriole", age: 3, color: "orange", tree: tree3})

# if it was a many to many relationship
# don't assign tree1 like we did on line 12
# forest1 = Forest.create(bird: bird1, tree: tree1, name: "Sherwood")

