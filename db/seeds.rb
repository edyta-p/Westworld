# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.destroy_all
Personnage.destroy_all

bob = User.create(email: 'bob@test.fr', password: 'bbb123')
jen = User.create(email: 'jen@test.fr', password: 'jjj123')

lucke = Personnage.create(name: 'Lucke', category: 'good', role: 'sherif', price: 300, user: bob)
lucke_image = Cloudinary::Uploader.upload('/assets/images/image_4.svg')
lucke.update(image: lucke_image['url'])

billy = Personnage.create(name: 'Billy', category: 'bad', role: 'thief', price: 200, user: bob)
billy_image = Cloudinary::Uploader.upload('/chassets/images/image_5')
billy.update(image: billy_image['url'])

jane = Personnage.create(name: 'Jane', category: 'bad', role: 'thief', price: 100, user: jen)
jane_image = Cloudinary::Uploader.upload('/cassets/images/image_7')
jane.update(image: jane_image['url'])

jo = Personnage.create(name: 'Jo', category: 'bad', role: 'criminal', price: 300, user: bob)
jo_image = Cloudinary::Uploader.upload('assets/images/image_8')
jo.update(image: jo_image['url'])

jessy = Personnage.create(name: 'Jessy', category: 'good', role: 'cowboy', price: 300, user: jen)
jessy_image = Cloudinary::Uploader.upload('/chassets/images/image_9')
jessy.update(image: jessy_image['url'])

black = Personnage.create(name: 'Black', category: 'good', role: 'marshall', price: 400, user: bob)
black_image = Cloudinary::Uploader.upload('/chassets/images/image_10')
black.update(image: black_image['url'])

doc = Personnage.create(name: 'Doc', category: 'good', role: 'doctor', price: 500, user: jen)
doc_image = Cloudinary::Uploader.upload('/assets/images/image_11')
doc.update(image: doc_image['url'])

pat = Personnage.create(name: 'Pat', category: 'bad', role: 'thief', price: 100, user: bob)
pat_image = Cloudinary::Uploader.upload('/assets/images/image_12')
pat.update(image: pat_image['url'])
