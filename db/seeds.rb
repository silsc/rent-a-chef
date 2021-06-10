require 'open-uri'

puts 'Destroying all'
User.destroy_all
Booking.destroy_all
Chef.destroy_all
Review.destroy_all
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user = User.create!(email: 'carlos.mix@gmail.com', password: 'password')


puts "Creating chefs"
chefs = []
file = URI.open('https://images.unsplash.com/photo-1587116861219-230ac19df971?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2468&q=80')
avatar = URI.open('https://dominicana.do/wp-content/uploads/2020/09/Gordon-Ramsay.png')
gordon = Chef.create!(user: User.first, name: 'Gordon Ramsay', location: 'London', description: 'famous international chef, amazing food', price: 200 )
gordon.photo.attach(io: file, filename: 'gordon_ramsay.jpg', content_type: 'image/jpg')
gordon.avatar.attach(io: avatar, filename: 'gordon_ramsay_avatar.jpg', content_type: 'image/jpg')
chefs << gordon

file_two = URI.open('https://images.unsplash.com/photo-1534790566855-4cb788d389ec?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTQ4fHxjaGVmfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60')
avatar_two = URI.open('https://s1.eestatic.com/2019/06/19/cocinillas/actualidad-gastronomica/actualidad_gastronomica_407470914_125942795_1280x1280.jpg')
martin = Chef.create!(user: User.first, name: 'Martin Berasategui', location: 'Basque', description: 'famous international chef, amazing food', price: 150.5)
martin.photo.attach(io: file_two, filename: 'martin_berasategui.jpg', content_type: 'image/jpg')
martin.avatar.attach(io: avatar_two, filename: 'martin_berasategui_avatar.jpg', content_type: 'image/jpg')
chefs << martin

file_three = URI.open('https://images.unsplash.com/photo-1601063458289-77247ba485ec?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=80')
avatar_three = URI.open('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS6UmMT3OIqmdfiM5zRLBUeLPmxzJKsuXDAqg&usqp=CAU')
yamamoto = Chef.create!(user: User.first, name: 'Seiji Yamamoto', location: 'Osaka', description: 'famous international chef, amazing food', price: 300)
yamamoto.photo.attach(io: file_three, filename: 'yamamoto.jpg', content_type: 'image/jpg')
yamamoto.avatar.attach(io: avatar_three, filename: 'yamamoto_avatar.jpg', content_type: 'image/jpg')
chefs << yamamoto

file_four = URI.open('https://images.unsplash.com/photo-1559948271-7d5c98d2e951?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mjl8fGFzaWFuJTIwZm9vZHxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60')
avatar_four = URI.open('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRUX2PpPfYZ4p6k7MdXKcEk-kGO7jqZ6lLrIA&usqp=CAU')
nigella = Chef.create!(user: User.first, name: 'Nigella Lawson', location: 'Lisbon', description: 'famous international chef, amazing food', price: 400)
nigella.photo.attach(io: file_four, filename: 'nigella.jpg', content_type: 'image/jpg')
nigella.avatar.attach(io: avatar_four, filename: 'nigella_avatar.jpg', content_type: 'image/jpg')
chefs << nigella

file_five = URI.open('https://images.unsplash.com/photo-1560180474-e8563fd75bab?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=668&q=80')
avatar_five = URI.open('https://www.rouxscholarship.co.uk/wp-content/uploads/2020/09/ClareSmythRouxScholarshipjudge_JodiHindsSQ-scaled.jpg')
clare = Chef.create!(user: User.first, name: 'Clare Smyth', location: 'London', description: 'famous international chef, amazing food', price: 57.8)
clare.photo.attach(io: file_five, filename: 'clare.jpg', content_type: 'image/jpg')
clare.avatar.attach(io: avatar_five, filename: 'clare_avatar.jpg', content_type: 'image/jpg')
chefs << clare


puts "Creating cWHAT"

# chefs.each do |chef|
#     booking = Booking.create!(user: User.first, chef: chef, start_date: Date.today, end_date: Date.today + 10)
#     review = Review.create!(content: 'interesting', rating: 5, booking_id: booking.id)
# end

# booking = Booking.create!(user: user, chef: chefs, start_date: Date.today, end_date: Date.today + 10)

