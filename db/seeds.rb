User.destroy_all
Booking.destroy_all
Chef.destroy_all
Review.destroy_all
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user = User.create!(email: 'carlos.mix@gmail.com', password: 'password')
chef = Chef.create!(user: user, name: 'Gordon', location: 'London', description: 'amazing food', price: 200)
booking = Booking.create!(user: user, chef: chef, start_date: Date.today, end_date: Date.today + 10)
review = Review.create!(content: 'interesting', rating: 5, booking: booking)

