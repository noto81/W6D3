# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ActiveRecord::Base.transaction do

    ArtworkShare.destroy_all
    Artwork.destroy_all
    User.destroy_all

    u1 = User.create!(username: 'Andy')
    u2 = User.create!(username: 'Valerie')

    art1 = Artwork.create!(title: 'Toby is cute', image_url: "tobyiscute.com", artist_id: u1[:id])
    art2 = Artwork.create!(title: 'Cookies are nice', image_url: "cookies.com", artist_id: u2[:id])


end