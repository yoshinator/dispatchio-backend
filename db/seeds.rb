# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Company.create(name: "Power Cleanouts", phone: "201-624-1171", website: "http://powercleanouts.com")
Location.create(city: "North Bergen", nickname: "north bergen", company_id: 1)

User.create(user_type: "owner", f_name: "Yoan", l_name: "Ante", email: "yoanante@gmail.com", phone: "201-675-6069", location_id: 1,password: "hello")
User.create(user_type: "manager", f_name: "George", l_name: "Menendez", email: "george@powercleanouts.com", phone: "201-624-1171", location_id: 1, password: "hello")
User.create(user_type: "employee", f_name: "Miguel", l_name: "Diaz", email: "miguel@powercleanouts.com", phone: "201-555-5555", location_id: 1, password: "hello")

Team.create(name: "Green")
Team.create(name: "Yellow")
Team.create(name: "Red")

TeamUser.create(team_id: 1, user_id: 1)
TeamUser.create(team_id: 1, user_id: 2)

TeamUser.create(team_id: 2, user_id: 2)
TeamUser.create(team_id: 2, user_id: 3)

Customer.create(name: "Andrew Thompson", poc: "Jason", street_1: "505 Washington Ave", street_2: "", city: "Hoboken", state: "NJ", zip: "07011", phone: "212-317-5112", email: "andy@tthomeservices.com")

Customer.create(name: "RJD ", poc: "Greg", street_1: "14 Grand St", street_2: "", city: "Hoboken", state: "NJ", zip: "07011", phone: "212-444-1234", email: "Gregg@ubstudio.com")

Job.create(customer_id: 1, location_id: 1, team_id: 1, street_1: "707 park ave", street_2: "", city: "hoboken", zip: "07011", state: "NJ", price: 150, schedule_date: "1/25/2019", schedule_time: "8:00 am", paid: false)

Job.create(customer_id: 1, location_id: 1, team_id: 2, street_1: "505 willow ave", street_2: "", city: "hoboken", zip: "07011", state: "NJ", price: 150, schedule_date: "1/25/2019", schedule_time: "8:00 am", paid: false)

Job.create(customer_id: 1, location_id: 1, team_id: 2, street_1: "1515 46th street", street_2: "", city: "North Bergen", zip: "07047", state: "NJ", price: 750, schedule_date: "1/25/2019", schedule_time: "8:00 am", paid: false)

Job.create(customer_id: 1, location_id: 1, team_id: 2, street_1: "4111 DeMoine Ave", street_2: "Suite 205", city: "Fairlawn", zip: "07047", state: "NJ", price: 900, schedule_date: "1/25/2019", schedule_time: "8:00 am", paid: false)

Job.create(customer_id: 1, location_id: 1, team_id: 1, street_1: "7204 Bergenline Ave 46th ", street_2: "", city: "North Bergen", zip: "07047", state: "NJ", price: 500, schedule_date: "1/25/2019", schedule_time: "8:00 am", paid: false)

Job.create(customer_id: 1, location_id: 1, team_id: 1, street_1: "7204 Bergenline Ave 46th ", street_2: "", city: "North Bergen", zip: "07047", state: "NJ", price: 500, schedule_date: "1/14/2019", schedule_time: "8:00 am", paid: false)

Job.create(customer_id: 1, location_id: 1, team_id: 1, street_1: "7204 Bergenline Ave 46th ", street_2: "", city: "North Bergen", zip: "07047", state: "NJ", price: 500, schedule_date: "1/14/2019", schedule_time: "8:00 am", paid: false)