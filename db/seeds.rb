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
file = URI.open('https://files.thehandbook.com/uploads/2014/10/Gordon-Ramsay.jpg')
gordon = Chef.create!(user: user, name: 'Gordon Ramsay', location: 'London', description: 'famous international chef, amazing food', price: 200 )
gordon.photo.attach(io: file, filename: 'gordon_ramsay.jpg', content_type: 'image/jpg')
chefs << gordon

file_two = URI.open('https://uh.gsstatic.es/sfAttachPlugin/994951.jpg')
martin = Chef.create!(user: user, name: 'Martin Berasategui', location: 'Basque', description: 'famous international chef, amazing food', price: 150.5)
martin.photo.attach(io: file_two, filename: 'martin_berasategui.jpg', content_type: 'image/jpg')
chefs << martin

file_three = URI.open('https://www.theworlds50best.com/stories/filestore/jpg/Seiji-Icon-Blog-19-Teaser.jpg')
yamamoto = Chef.create!(user: user, name: 'Seiji Yamamoto', location: 'Osaka', description: 'famous international chef, amazing food', price: 300)
yamamoto.photo.attach(io: file_three, filename: 'yamamoto.jpg', content_type: 'image/jpg')
chefs << yamamoto

file_four = URI.open('https://693715.smushcdn.com/614889/wp-content/uploads/2021/03/Carme-Ruscalleda-090-1-1024x833.jpg?lossy=1&strip=1&webp=1')
carme = Chef.create!(user: user, name: 'Carme Ruscalleda', location: 'Madrid', description: 'famous international chef, amazing food', price: 400)
carme.photo.attach(io: file_four, filename: 'carme.jpg', content_type: 'image/jpg')
chefs << carme

file_five = URI.open('https://www.rouxscholarship.co.uk/wp-content/uploads/2020/09/ClareSmythRouxScholarshipjudge_JodiHindsSQ-scaled.jpg')
clare = Chef.create!(user: user, name: 'Clare Smyth', location: 'London', description: 'famous international chef, amazing food', price: 57.8)
clare.photo.attach(io: file_five, filename: 'carme.jpg', content_type: 'image/jpg')
chefs << clare

chefs.each do |chef|
    booking = Booking.create!(user: user, chef: chef, start_date: Date.today, end_date: Date.today + 10)  
    review = Review.create!(content: 'interesting', rating: 5, booking_id: booking.id)
end

# booking = Booking.create!(user: user, chef: chefs, start_date: Date.today, end_date: Date.today + 10)

