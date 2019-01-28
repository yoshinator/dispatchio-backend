# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Company.create(name: "PLACEHOLDER", phone:"555-555-55555", website: "http://example.com")
Location.create(city: "PLACEHOLDER", nickname: "PLACEHOLDER", company_id: 1)
Company.create(name: "Power Cleanouts", phone: "201-624-1171", website: "http://powercleanouts.com")
Location.create(city: "North Bergen", nickname: "north bergen", company_id: 2)

User.create(user_type: "owner", f_name: "Yoan", l_name: "Ante", email: "yoanante@gmail.com", phone: "201-675-6069", location_id: 2,password: "hello")
User.create(user_type: "manager", f_name: "George", l_name: "Menendez", email: "george@powercleanouts.com", phone: "201-624-1171", location_id: 2, password: "hello")
User.create(user_type: "employee", f_name: "Miguel", l_name: "Diaz", email: "miguel@powercleanouts.com", phone: "201-555-5555", location_id: 2, password: "hello", lat: "40.7513307" , lon: "-73.98506700000002" , upat: "1/24/2019, 9:51 AM" )
User.create(user_type: "employee", f_name: "Sarah", l_name: "Pai", email: "sarah@powercleanouts.com", phone: "201-666-5555", location_id: 2, password: "hello", lat: "40.7663711" , lon: "-74.0253715" , upat: "1/24/2019, 9:51 AM" )
User.create(user_type: "employee", f_name: "Alex", l_name: "Truon", email: "alex@powercleanouts.com", phone: "201-555-6459", location_id: 2, password: "hello", lat: "40.7439905" , lon: "-74.0323626" , upat: "1/24/2019, 11:51 AM" )
User.create(user_type: "employee", f_name: "Alex", l_name: "Truong", email: "alex@powercleanouts.com", phone: "201-555-6459", location_id: 2, password: "hello", lat: "40.7439905" , lon: "-74.0323626" , upat: "1/24/2019, 11:51 AM" )
User.create(user_type: "employee", f_name: "Jimmy", l_name: "Winfield", email: "jimmy@powercleanouts.com", phone: "201-555-6459", location_id: 2, password: "hello", lat: "40.73457150000001" , lon: "-74.06315440000003" , upat: "1/24/2019, 12:51 PM" )
User.create(user_type: "employee", f_name: "Laura", l_name: "Kim", email: "laura@powercleanouts.com", phone: "201-725-6459", location_id: 2, password: "hello", lat: "40.7103224" , lon: "-74.05588929999999" , upat: "1/24/2019, 10:51 AM" )
User.create(user_type: "employee", f_name: "Jeff", l_name: "Hwang", email: "jeff@powercleanouts.com", phone: "201-725-6459", location_id: 2, password: "hello", lat: "38.9108325" , lon: "-75.52766989999998" , upat: "1/24/2019, 10:51 AM" )

Team.create(name: "Green", location_id: 2)
Team.create(name: "Yellow", location_id: 2)
Team.create(name: "Red", location_id: 2)

TeamUser.create(team_id: 1, user_id: 1)
TeamUser.create(team_id: 1, user_id: 2)



TeamUser.create(team_id: 2, user_id: 3)
TeamUser.create(team_id: 2, user_id: 4)
TeamUser.create(team_id: 2, user_id: 5)
TeamUser.create(team_id: 2, user_id: 8)
TeamUser.create(team_id: 3, user_id: 6)
TeamUser.create(team_id: 3, user_id: 7)

Customer.create(name: "Andrew Thompson", poc: "Jason", street_1: "505 Washington Ave", street_2: "", city: "Hoboken", state: "NJ", zip: "07011", phone: "212-317-5112", email: "andy@tthomeservices.com", location_id: 2)

Customer.create(name: "RJD ", poc: "Greg", street_1: "14 Grand St", street_2: "", city: "Hoboken", state: "NJ", zip: "07011", phone: "212-444-1234", email: "Gregg@ubstudio.com", location_id: 2)

Job.create(customer_id: 1, location_id: 2, team_id:3, street_1: "707 park ave", street_2: "", city: "hoboken", zip: "07011", state: "NJ", price: 950, schedule_date: "1/25/2019", schedule_time: "8:30", paid: false)

Job.create(customer_id: 1, location_id: 2, team_id: 2, street_1: "505 willow ave", street_2: "", city: "hoboken", zip: "07011", state: "NJ", price: 150, schedule_date: "1/26/2019", schedule_time: "12:30", paid: false)

Job.create(customer_id: 1, location_id: 2, team_id: 2, street_1: "1515 46th street", street_2: "", city: "North Bergen", zip: "07047", state: "NJ", price: 750, schedule_date: "1/27/2019", schedule_time: "8:30", paid: false)

Job.create(customer_id: 1, location_id: 2, team_id: 3, street_1: "4111 DeMoine Ave", street_2: "Suite 205", city: "Fairlawn", zip: "07047", state: "NJ", price: 900, schedule_date: "1/27/2019", schedule_time: "8:30", paid: false)

Job.create(customer_id: 1, location_id: 2, team_id: 2, street_1: "7204 Bergenline Ave  ", street_2: "", city: "North Bergen", zip: "07047", state: "NJ", price: 500, schedule_date: "1/25/2019", schedule_time: "11:00", paid: false)

Job.create(customer_id: 1, location_id: 2, team_id: 3, street_1: "2113 Bergenline Ave  ", street_2: "", city: "Union City", zip: "07087", state: "NJ", price: 600, schedule_date: "1/29/2019", schedule_time: "2:00", paid: false)

Job.create(customer_id: 1, location_id: 2, team_id: 3, street_1: "7204 Bergenline Ave 46th ", street_2: "", city: "North Bergen", zip: "07047", state: "NJ", price: 400, schedule_date: "1/22/2019", schedule_time: "2:00", paid: false)

Job.create(customer_id: 1, location_id: 2, team_id: 2, street_1: "newport mall", street_2: "", city: "Jersey city", zip: "", state: "NJ", price: 300, schedule_date: "1/29/2019", schedule_time: "8:30", paid: false)

Job.create(customer_id: 1, location_id: 2, team_id: 2, street_1: "7204 Bergenline Ave 46th ", street_2: "", city: "North Bergen", zip: "07047", state: "NJ", price: 500, schedule_date: "1/27/2019", schedule_time: "8:30", paid: false)

Job.create(customer_id: 1, location_id: 2, team_id: 3, street_1: "1527 8th street  ", street_2: "", city: "North Bergen", zip: "07047", state: "NJ", price: 500, schedule_date: "1/25/2019", schedule_time: "14:10", paid: false)

Job.create(customer_id: 1, location_id: 2, team_id: 3, street_1: "11 broadway ", street_2: "", city: "new york", zip: "08011", state: "Ny", price: 980, schedule_date: "1/26/2019", schedule_time: "8:30", paid: false)

Job.create(customer_id: 1, location_id: 2, team_id: 3, street_1: "Gardens state plaze", street_2: "", city: "paramus", zip: "", state: "NJ", price: 6000, schedule_date: "1/27/2019", schedule_time: "8:30", paid: false)