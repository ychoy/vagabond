# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
City.destroy_all

User.create({
  first_name: 'Nicolás',
  last_name: 'Dominguez',
  current_city: 'Havana',
  profile_image: 'https://photos.smugmug.com/2017/22817-GA-Headshots/n-567HZr/i-wcZdTHf/0/XL/i-wcZdTHf-XL.jpg',
  email: 'nicolas@lavagabond.com',
  password: 'nicolas',
  admin: true
})

User.create({
  first_name: 'Rayne',
  last_name: 'Yamaguchi',
  current_city: 'Honolulu',
  profile_image: 'https://s-media-cache-ak0.pinimg.com/236x/81/a0/a9/81a0a9479b8f60fdb4b364726f2be75a.jpg',
  email: 'Rayne@lavagabond.com',
  password: 'Rayne',
  admin: true
})


User.create({
  first_name: 'Faustino',
  last_name: 'Guadarrama',
  current_city: 'Ibiza',
  profile_image: 'https://photos.smugmug.com/2017/22817-GA-Headshots/n-567HZr/i-cHKjX6s/0/XL/i-cHKjX6s-XL.jpg',
  email: 'faustino@lavagabond.com',
  password: 'faustino',
  admin: true
})

User.create({
  first_name: 'Mariabella',
  last_name: 'Attwater',
  current_city: 'Gibraltar',
  profile_image: 'https://photos.smugmug.com/2017/22817-GA-Headshots/n-567HZr/i-bCSX2HJ/0/XL/i-bCSX2HJ-XL.jpg',
  email: 'mariabella@levagabond.com',
  password: 'mariabella',
  admin: true
})

User.create({
  first_name: 'Fatima',
  last_name: 'Ojamehedi',
  current_city: 'London',
  profile_image: 'https://photos.smugmug.com/2017/22817-GA-Headshots/n-567HZr/i-BBZ6fgX/0/XL/i-BBZ6fgX-XL.jpg',
  email:'fatima@lavagabond.com',
  password:' fatima',
  admin: true
})

User.create({
  first_name: 'Eddie',
  last_name: 'Reyes',
  current_city: 'San Francisco',
  profile_image: 'https://s-media-cache-ak0.pinimg.com/236x/81/a0/a9/81a0a9479b8f60fdb4b364726f2be75a.jpg',
  email: 'darwin@lavagabond.com',
  password:' password',
  admin: true
})

User.create({
  first_name: 'Marisol',
  last_name: 'Yen',
  current_city: 'Hong Kong',
  profile_image: 'https://photos.smugmug.com/2017/22817-GA-Headshots/n-567HZr/i-VBm5TM4/0/XL/i-VBm5TM4-XL.jpg',
  email: 'marisol@levagabond.com',
  password: 'marisol',
  admin: true
})

City.create({
  name: 'San Francisco',
  photo: 'http://www.sftravel.com/sites/sftraveldev.prod.acquia-sites.com/files/SanFrancisco_0.jpg'
})

City.create({
  name: 'London',
  photo: 'http://cdn-image.travelandleisure.com/sites/default/files/styles/1600x1000/public/1446144997/london-header-dg1015.jpg?itok=7tScDQ8t'
})

City.create({
  name: 'Gibraltar',
  photo: 'http://oht-webcontent.s3.amazonaws.com/one_hour_photo/Gibraltar.jpg'
})

City.create({
  name: 'Havana',
  photo: 'http://www.ralphlauren.com/file_source/RalphLauren/Magazine-Issues/2015/12-December/media/formats/Undiscovered_Havana_HERO_crop_articlehero_large.jpg?950025.9624328464'
})

City.create({
  name: 'Ibiza',
  photo: 'http://ibiza-knowhow.com/wp-content/uploads/2017/03/Ibiza.jpg'
})

City.create({
  name: 'Hong Kong',
  photo: 'https://transversos.files.wordpress.com/2014/07/hong-kong.jpg'
})

City.create({
  name: 'Honolulu',
  photo: 'http://paradiseintheworld.com/wp-content/uploads/2012/03/honolulu-beach.jpg'
})
