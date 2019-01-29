# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

artist1 = User.create(username: 'Billy')
artist2 = User.create(username: 'BillyBob')
sharer1 = User.create(username: 'Frank')

artwork1 = Artwork.create(title: 'The Passion of Christ', image_url: "poc.com", artist_id: User.find_by(username: 'Billy').id)
artwork2 = Artwork.create(title: 'The Passion of Buddah', image_url: "pob.com", artist_id: User.find_by(username: 'BillyBob').id)

share1 = ArtworkShare.create(viewer_id: User.find_by(username: 'Frank').id, artwork_id: Artwork.find_by(title: 'The Passion of Christ').id)
share2 = ArtworkShare.create(viewer_id: User.find_by(username: 'Frank').id, artwork_id: Artwork.find_by(title: 'The Passion of Buddah').id)

