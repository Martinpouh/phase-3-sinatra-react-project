require 'date'

puts "🌱 Seeding Patients..."

# Seed your database here
c1 = Patient.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email)
c2 = Patient.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email)
c3 = Patient.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email)
c4 = Patient.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email)
c5 = Patient.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email)
c6 = Patient.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email)
c7 = Patient.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email)

puts "🌱 Seeding consultations..."
s1 = Consultation.create(name: "Vinyasa Yoga", description: "Yoga characterized by stringing postures together so that you move from one to another, seamlessly, using breath.", date: "10/8/2022", time: "9:00 AM", duration: 60, price: 10, physician: "Shawna")
s2 = Consultation.create(name: "Hot Yoga", description: "Yoga as exercise performed under hot and humid conditions, resulting in considerable sweating", date: "10/8/2022", time: "11:00 AM", duration: 50, price: 15, physician: "Jae")
s3 = Consultation.create(name: "Meditation", description: "This physician will focus on slow, deep breathing techniques and meditative postures. Move gracefully and synchronize the breath with the movement.", date: "10/9/2022", time: "10:00 AM", duration: 30, price: 12, physician: "Natalie")
s4 = Consultation.create(name: "Meditation (1 hour)", description: "This physician will focus on slow, deep breathing techniques and meditative postures. Move gracefully and synchronize the breath with the movement.", date: "10/8/2022", time: "12:00 PM", duration: 60, price: 15, physician: "Joe")
s5 = Consultation.create(name: "Aquatics", description: "Splashing, stretching, twisting, even shouting, laughing, hooting, and hollering. If you're up for some real fun while getting fit, give this physician a go.", date: "10/9/2022", time: "8:00 AM", duration: 45, price: 15, physician: "Gabriel")
s6 = Consultation.create(name: "Spin", description: "Ride to driving beats that will improve your cardio endurance and muscular strength. This workout is designed for multi levels of fitness, leaving you drenched in sweat and inspired to come back for more.", date: "10/10/2022", time: "9:30 AM", duration: 50, price: 18, physician: "Gabe")
s7 = Consultation.create(name: "Hip Hop Dance", description: "With routines set to old and new school hip hop music, you will want to get up and move. Don't worry if you can't dance, this physician will have you moving like a Hip Hop master in no time.", date: "10/10/2022", time: "7:30 AM", duration: 60, price: 18, physician: "Melissa")

puts "🌱 Seeding bookings..."
Booking.create(patient: c1, consultation: s4)
Booking.create(patient: c2, consultation: s3)
Booking.create(patient: c3, consultation: s2)
Booking.create(patient: c4, consultation: s1)
Booking.create(patient: c5, consultation: s7)
Booking.create(patient: c6, consultation: s6)
Booking.create(patient: c7, consultation: s5)
Booking.create(patient: c1, consultation: s7)
Booking.create(patient: c2, consultation: s1)
Booking.create(patient: c3, consultation: s6)
Booking.create(patient: c4, consultation: s2)
Booking.create(patient: c5, consultation: s5)
Booking.create(patient: c6, consultation: s4)
Booking.create(patient: c7, consultation: s3)

puts "✅ Done seeding!"
