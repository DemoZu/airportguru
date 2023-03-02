# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "cleaning database..."
Flight.destroy_all
Airport.destroy_all
FacilityCategory.destroy_all
Facility.destroy_all


puts "seeding database with airports and facilities..."

user = User.create!([
  {
    first_name: "Banana",
    last_name: "Banana",
    nickname: "Bad banana",
    bio: "banana!",
    email: "banana@gmail.com",
    password: "banana"
  },
  {
    first_name: "Tina",
    last_name: "Turner",
    nickname: "TinaT",
    bio: "It's me - TinaT!",
    email: "tina@turner.com",
    password: "123456"
  }
])

airports = Airport.create!([
  {
    name: "London Heathrow",
    iata_name: "LHR",
    terminal: "2"
  },

  {
    name: "London Heathrow",
    iata_name: "LHR",
    terminal: "3"
  },

  {
    name: "London Heathrow",
    iata_name: "LHR",
    terminal: "4"
  },

  {
    name: "London Heathrow",
    iata_name: "LHR",
    terminal: "5"
  },

  {
    name: "London Luton",
    iata_name: "LTN",
    terminal: ""
  },

  {
    name: "London Stansted",
    iata_name: "STN",
    terminal: ""
  },

  {
    name: "Paris Charles de Gaulle",
    iata_name: "CDG",
    terminal: "1"
  },

  {
    name: "Paris Charles de Gaulle",
    iata_name: "CDG",
    terminal: "2"
  },

  {
    name: "Paris Charles de Gaulle",
    iata_name: "CDG",
    terminal: "3"
  },

  {
    name: "Paris-Vatry Airport",
    iata_name: "XCR",
    terminal: ""
  },

  {
    name: "Paris Orly Airport",
    iata_name: "ORY",
    terminal: "1"
  },

  {
    name: "Paris Orly Airport",
    iata_name: "ORY",
    terminal: "2"
  },

  {
    name: "Paris Orly Airport",
    iata_name: "ORY",
    terminal: "3"
  },

  {
    name: "Paris Orly Airport",
    iata_name: "ORY",
    terminal: "4"
  },

  {
    name: "Paris Beauvais Airport",
    iata_name: "BVA",
    terminal: ""
  }
])

puts "Created airports!"
puts airports

puts "---------------------------------"
puts "Creating facility categories..."

facility_categories = FacilityCategory.create!([
    {
      name: "Coffee Shops",
    },

    {

      name: "Shops",
    },

    {
      name: "Restaurants",
    },

    {
      name: "Bars",
    },

    {
      name: "Parking",
    },

    {
      name: "Services",
    },

    {
      name: "Lounges",
    },
  ])

puts "Facility categories created!"
  puts "---------------------------------"

puts "Creating facilities..."

facilities = Facility.create!([
  {
    title: "Black Sheep Coffee",
    airport_id: 1,
    facility_category_id: 1
  },

  {
    title: "Caffè Nero",
    airport_id: 1,
    facility_category_id: 1
  },

  {
    title: "Caffè Nero",
    airport_id: 1,
    facility_category_id: 1
  },

  {
    title: "EL&N London",
    airport_id: 1,
    facility_category_id: 1
  },

  {
    title: "Hestons The Perfectionists Cafe",
    airport_id: 1,
    facility_category_id: 1
  },

  {
    title: "Joe's Coffee House",
    airport_id: 1,
    facility_category_id: 1
  },

  {
    title: "Leon",
    airport_id: 1,
    facility_category_id: 1
  },

  {
    title: "Starbucks",
    airport_id: 1,
    facility_category_id: 1
  },

  {
    title: "Caviar House Oyster Bar",
    airport_id: 1,
    facility_category_id: 3
  },

  {
    title: "Co-Pilots Bar & Kitchen",
    airport_id: 1,
    facility_category_id: 3
  },

  {
    title: "Fortum & Mason Bar",
    airport_id: 1,
    facility_category_id: 3
  },

  {
    title: "Gordon Ramsay Plane Food",
    airport_id: 1,
    facility_category_id: 3
  },

  {
    title: "Itsu",
    airport_id: 1,
    facility_category_id: 3
  },

  {
    title: "Kanishka Kitchen",
    airport_id: 1,
    facility_category_id: 3
  }
])

puts "Facilities created!"


puts "-----------------"
puts "Creating tip categories"

tip_categories = TipCategory.create!([
  {
    name: "Utilities"
  },
  {
    name: "Food & Drink"
  },
  {
    name: "Shopping"
  },
  {
    name: "Services"
  },
])
puts tip_categories
puts "Tip categories created!"
puts "-----------------"


puts "-----------------"
puts "Creating tips"

tip = Tip.create!([
  {
    title: "Charge your phone",
    content: "There are charging points in the airport - try the ones next to Gate 12",
    likes: 1,
    user_id: 1,
    airport_id: 1,
    tip_category_id: 1,
  },
  {
    title: "Good lunch deal at Caffe Nero",
    content: "Sandwich and drink for £5.99",
    likes: 3,
    airport_id: 2,
    user_id: 2,
    tip_category_id: 2,
  },
])
puts tip
puts "Tips created!"
puts "-----------------"

puts "Creating Meetup categories..."

meetup_categories = MeetupCategory.create!([
    {
      meetup_topic: "Coffee",
      meetup_type: "One to One",
    },

    {
      meetup_topic: "Drinks",
      meetup_type: "One to One",
    },

    {
      meetup_topic: "Food",
      meetup_type: "One to One",
    },

    {
      meetup_topic: "Shopping",
      meetup_type: "One to One",
    },

    {
      meetup_topic: "Kids play",
      meetup_type: "One to One",
    },

    {
      meetup_topic: "Coffee",
      meetup_type: "Group",
    },

    {
      meetup_topic: "Drinks",
      meetup_type: "Group",
    },
  ])
puts meetup_categories
puts "Meetup categories created!"
puts "---------------------------------"

meetup = Meetup.create!([
  {
    user_id: 1,
    meetup_category_id: 1,
    airport_id: 1,
    content: "Let's meet together have a coffee chat",
  },
  {
    user_id: 2,
    meetup_category_id: 2,
    airport_id: 1,
    content: "Any people come to have a Drink and music? Free",
  },
])
puts meetup
puts "Meetup created!"
puts "-----------------"
