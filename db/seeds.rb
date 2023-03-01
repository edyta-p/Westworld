# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Personnage.destroy_all
User.destroy_all


bob = User.create(email: 'bob@test.fr', password: 'bbb123')
jen = User.create(email: 'jen@test.fr', password: 'jjj123')

lucke = Personnage.create(name: 'Lucke', category: 'good', role: 'sherif', price: 300, user: bob)
billy = Personnage.create(name: 'Billy', category: 'bad', role: 'thief', price: 200, user: bob)
jane = Personnage.create(name: 'Jane', category: 'bad', role: 'thief', price: 100, user: jen)
jo = Personnage.create(name: 'Jo', category: 'bad', role: 'criminal', price: 300, user: bob)
jessy = Personnage.create(name: 'Jessy', category: 'good', role: 'cowboy', price: 300, user: jen)
black = Personnage.create(name: 'Black', category: 'good', role: 'marshall', price: 400, user: bob)
doc = Personnage.create(name: 'Doc', category: 'good', role: 'doctor', price: 500, user: jen)
pat = Personnage.create(name: 'Pat', category: 'bad', role: 'thief', price: 100, user: bob)
