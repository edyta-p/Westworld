# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
require "cloudinary"
#   Character.create(name: "Luke", movie: movies.first)
# Reservation.destroy_all
Personnage.destroy_all
User.destroy_all


bob = User.create(email: 'bob@test.fr', password: 'bbb123')
jen = User.create(email: 'jen@test.fr', password: 'jjj123')

lucke = Personnage.create(name: 'Lucke', category: 'good', role: 'sherif', price: 300, user: bob)
lucke_image = Cloudinary::Uploader.upload('app/assets/images/image_4.svg')
lucke.photo.attach(io: URI.open(lucke_image['url']), filename: 'tutu.jpg')

pamela = Personnage.create(name: 'Pamela', category: 'bad', role: 'thief', price: 200, user: bob)
pamela_image = Cloudinary::Uploader.upload('app/assets/images/image_5.svg')
pamela.photo.attach(io: URI.open(pamela_image['url']), filename: 'tutu.jpg')

dolores = Personnage.create(name: 'Dolores', category: 'bad', role: 'thief', price: 100, user: jen)
dolores_image = Cloudinary::Uploader.upload('app/assets/images/image_7.svg')
dolores.photo.attach(io: URI.open(dolores_image['url']), filename: 'tutu.jpg')

doc = Personnage.create(name: 'Doc', category: 'good', role: 'doctor', price: 300, user: bob)
doc_image = Cloudinary::Uploader.upload('app/assets/images/image_8.svg')
doc.photo.attach(io: URI.open(doc_image['url']), filename: 'tutu.jpg')

jessy = Personnage.create(name: 'Jessy', category: 'good', role: 'cowboy', price: 300, user: jen)
jessy_image = Cloudinary::Uploader.upload('app/assets/images/image_9.svg')
jessy.photo.attach(io: URI.open(jessy_image['url']), filename: 'tutu.jpg')

black = Personnage.create(name: 'Black', category: 'good', role: 'marshall', price: 400, user: bob)
black_image = Cloudinary::Uploader.upload('app/assets/images/image_10.svg')
black.photo.attach(io: URI.open(black_image['url']), filename: 'tutu.jpg')

billy = Personnage.create(name: 'Billy', category: 'bad', role: 'criminal', price: 500, user: jen)
billy_image = Cloudinary::Uploader.upload('app/assets/images/image_11.svg')
billy.photo.attach(io: URI.open(billy_image['url']), filename: 'tutu.jpg')

ginette = Personnage.create(name: 'Ginette', category: 'bad', role: 'dancer', price: 100, user: bob)
ginette_image = Cloudinary::Uploader.upload('app/assets/images/image_12.svg')
ginette.photo.attach(io: URI.open(ginette_image['url']), filename: 'tutu.jpg')
