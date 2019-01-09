# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Company.create(name: "Power Cleanouts", phone: "201-624-1171", website: "http://powercleanouts.com")
Location.create(city: "North Bergen", nickname: "north bergen")

User.create(type: "owner", f_name: "Yoan", l_name: "Ante", email: "yoanante@gmail.com", phone: "201-675-6069")
User.create(type: "manager", f_name: "George", l_name: "Menendez", email: "george@powercleanouts.com", phone: "201-624-1171")
User.create(type: "employee", f_name: "Miguel", l_name: "Diaz", email: "miguel@powercleanouts.com", phone: "201-555-5555")

Team.create(name: "Green")
Team.create(name: "Yellow")
Team.create(name: "Red")

TeamUser.create(team_id: 1, user_id: 1)
TeamUser.create(team_id: 1, user_id: 2)

TeamUser.create(team_id: 2, user_id: 2)
TeamUser.create(team_id: 2, user_id: 3)

Customer.create(name: "Andrew Thompson", poc: "Jason", street_1: "505 Washington Ave", street_2: "", city: "Hoboken", state: "NJ", zip: "07011", phone: "212-317-5112", email: "andy@tthomeservices.com")

Job.create(customer_id: 1, location_id: 1, team_id: 1, street_1: "707 park ave", street_2: "", city: "hoboken", zip: "07011", state: "NJ", price: 150, schedule_date: "1/18/2018", schedule_time: "8:00 am", paid: false)