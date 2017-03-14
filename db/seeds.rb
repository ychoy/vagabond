# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
City.destroy_all
Tip.destroy_all

User.create({
  first_name: 'Nicolás',
  last_name: 'Dominguez',
  current_city: 'Havana',
  profile_image: 'https://s-media-cache-ak0.pinimg.com/236x/81/a0/a9/81a0a9479b8f60fdb4b364726f2be75a.jpg',
  email: 'nicolas@me.com',
  password: 'nicolas'
})

User.create({
  first_name: 'Rayne',
  last_name: 'Yamaguchi',
  current_city: 'Honolulu',
  profile_image: 'https://s-media-cache-ak0.pinimg.com/236x/81/a0/a9/81a0a9479b8f60fdb4b364726f2be75a.jpg',
  email: 'Rayne@me.com',
  password: 'Rayne'
})


User.create({
  first_name: 'Faustino',
  last_name: 'Guadarrama',
  current_city: 'Ibiza',
  profile_image: 'https://s-media-cache-ak0.pinimg.com/236x/81/a0/a9/81a0a9479b8f60fdb4b364726f2be75a.jpg',
  email: 'faustino@me.com',
  password: 'faustino'
})

User.create({
  first_name: 'Mariabella',
  last_name: 'Attwater',
  current_city: 'Gibraltar',
  profile_image: 'https://s-media-cache-ak0.pinimg.com/236x/81/a0/a9/81a0a9479b8f60fdb4b364726f2be75a.jpg',
  email: 'mariabella@me.com',
  password: 'mariabella'
})

User.create({
  first_name: 'Fatima',
  last_name: 'Ojamehedi',
  current_city: 'London',
  profile_image: 'https://s-media-cache-ak0.pinimg.com/236x/81/a0/a9/81a0a9479b8f60fdb4b364726f2be75a.jpg',
  email:'fatima@me.com',
  password:' fatima'
})

User.create({
  first_name: 'Eddie',
  last_name: 'Reyes',
  current_city: 'San Francisco',
  profile_image: 'https://s-media-cache-ak0.pinimg.com/236x/81/a0/a9/81a0a9479b8f60fdb4b364726f2be75a.jpg',
  email: 'darwin@me.com',
  password:' password'
})

User.create({
  first_name: 'Marisol',
  last_name: 'Yen',
  current_city: 'Hong Kong',
  profile_image: 'https://s-media-cache-ak0.pinimg.com/236x/81/a0/a9/81a0a9479b8f60fdb4b364726f2be75a.jpg',
  email: 'marisol@me.com',
  password: 'marisol'
})

City.create({
  name: 'San Francisco',
  photo: 'http://www.sftravel.com/sites/sftraveldev.prod.acquia-sites.com/files/SanFrancisco_0.jpg'
})

City.create({
  name: 'London',
  photo: 'https://media.timeout.com/images/100644443/image.jpg'
})

City.create({
  name: 'Gibraltar',
  photo: 'http://www.visitgibraltar.gi/images/homepage_slider/df1aw_slide2.jpeg'
})

City.create({
  name: 'Havana',
  photo: 'https://s-media-cache-ak0.pinimg.com/736x/6d/da/79/6dda79613348731c2fe0711a00872ef7.jpg'
})

City.create({
  name: 'Ibiza',
  photo: 'https://media-cdn.tripadvisor.com/media/photo-s/06/8d/1f/6a/linda-playa.jpg'
})

City.create({
  name: 'Hong Kong',
  photo: 'http://www.discoverhongkong.com/common/images_awc2/thematic-banner-2016/home-banner-large.jpg'
})

City.create({
  name: 'Honolulu',
  photo: 'http://lghttp.60358.nexcesscdn.net/8046264/images/page/-/100rc/img/City/Honolulu.jpg'
})

content = 'Morbi dapibus, ante ut finibus pulvinar, nisi nulla tincidunt risus, eget condimentum lectus ipsum non tortor. Aliquam eget aliquam lacus. Vestibulum erat dolor, tempor non hendrerit eu, ultrices faucibus quam. Fusce a sem eu ex efficitur vehicula viverra id sem. Sed augue ex, commodo ornare libero et, maximus aliquet turpis. Vivamus cursus commodo eros eget eleifend. Maecenas convallis mi purus, at facilisis tellus ullamcorper sed. Integer id erat maximus, sagittis diam varius, condimentum quam. Phasellus sed vestibulum risus. Nam id nulla libero. Suspendisse potenti. Curabitur leo mi, pretium vel diam vitae, suscipit lobortis lorem.

Fusce a leo eros. In in venenatis est, sed molestie augue. Aliquam justo enim, tempus vel neque eu, bibendum varius tellus. Praesent massa lectus, vulputate ac cursus nec, vestibulum eu risus. Nunc in enim posuere, tempor augue at, fermentum nisi. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Vivamus laoreet rutrum sapien, elementum commodo nibh egestas eget. Maecenas ut blandit tellus.

In iaculis orci orci, non euismod elit aliquam eget. Curabitur congue feugiat malesuada. Morbi sit amet mattis mauris, vel varius augue. Etiam vitae nibh lacus. Quisque ex metus, sodales sit amet diam lacinia, vehicula gravida turpis. Aliquam imperdiet odio sed lectus fermentum, at viverra sapien tristique. Maecenas venenatis efficitur posuere.

In vitae urna non ligula hendrerit interdum vitae a tortor. Morbi sit amet accumsan dolor. Maecenas a ex ac ex laoreet congue vitae pretium metus. Nunc at urna commodo, interdum quam eu, pretium diam. Nullam vitae ipsum sit amet turpis feugiat varius interdum nec libero. Sed quis sem velit. Fusce eu urna feugiat, convallis massa eget, consectetur magna. Vivamus efficitur tempus pharetra. Pellentesque viverra cursus metus, non consectetur magna posuere et. Nullam nec pharetra elit.'

Tip.create({
  title: 'Underwater caves',
  body: content
})

Tip.create({
  title: 'Best mom & pop dimsum shops',
  body: content
})

Tip.create({
  title: 'Quaint cafe in the arts district',
  body: content
})

Tip.create({
  title: 'Oldest bookstore on the block',
  body: content
})

Tip.create({
  title: 'Late night food markets',
  body: content
})

Tip.create({
  title: 'Swimming with turtles',
  body: content
})

Tip.create({
  title: 'Best underground comedy pub',
  body: content
})

Tip.create({
  title: 'Cityscapes and subways',
  body: content
})

Tip.create({
  title: 'Hidden dance club on Q street',
  body: content
})
