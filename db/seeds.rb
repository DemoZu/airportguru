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
# Journey.destroy_all


puts "seeding database with airports, facilities, users and journeys..."

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
  },
  {
    first_name: "Kara",
    last_name: "Thrace",
    nickname: "Kara",
    bio: "Love to travel!",
    email: "kara@thrace.com",
    password: "123456"
  },
  {
    first_name: "Lucy",
    last_name: "Evans",
    nickname: "LucyE",
    bio: "Mum to 3 kids. ",
    email: "lucy@evans.com",
    password: "123456"
  },
  {
    first_name: "Dan",
    last_name: "Smith",
    nickname: "MatrixDan",
    bio: "Single, 30, enjoys travelling. Environmentally conscious.",
    email: "dan@smith.com",
    password: "123456"
  },
  {
    first_name: "Paula",
    last_name: "Hamilton",
    nickname: "MarathonPaula",
    bio: "Fly a lot for work.",
    email: "paula@hamilton.com",
    password: "123456"
  },
  {
    first_name: "Ted",
    last_name: "Parish",
    nickname: "Ted_Parish",
    bio: "Enjoy holidays with my wife. Retired civil servant.",
    email: "ted@parish.com",
    password: "123456"
  },
  {
    first_name: "Tanya",
    last_name: "Baker",
    nickname: "tanya-rocks",
    bio: "Travelholic LOL",
    email: "tanya@baker.com",
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
    name: "London City",
    iata_name: "LCY",
    terminal: ""
  },
  {
    name: "London Gatwick",
    iata_name: "LGW",
    terminal: "North"
  },
  {
    name: "London Gatwick",
    iata_name: "LCW",
    terminal: "South"
  },
  {
    name: "Birmingham International",
    iata_name: "BHX",
    terminal: ""
  },
  {
    name: "Belfast International",
    iata_name: "BFS",
    terminal: ""
  },
  {
    name: "George Best Belfast City",
    iata_name: "BHD",
    terminal: ""
  },
  {
    name: "Glasgow International",
    iata_name: "GLA",
    terminal: ""
  },
  {
    name: "Bristol International",
    iata_name: "BRS",
    terminal: ""
  },
  {
    name: "Cardiff International",
    iata_name: "CWL",
    terminal: ""
  },
  {
    name: "East Midlands",
    iata_name: "EMA",
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
  {
    name: "Viewpoints"
  },
  {
    name: "Families"
  },
  {
    name: "Other"
  }
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
    title: "Good place to watch the planes",
    content: "There's a great view of the runway from the top floor, opposite Gate 8",
    likes: 3,
    user_id: 1,
    airport_id: 1,
    tip_category_id: 5,
  },
  {
    title: "Good lunch deal at Caffe Nero",
    content: "Sandwich and drink for £5.99",
    likes: 3,
    airport_id: 2,
    user_id: 2,
    tip_category_id: 3,
  },
  {
    title: "Great place to pick up a gift",
    content: "Gifts4All have some really nice gifts, reasonably priced. Good to take with you if you're visiting family or friends.",
    likes: 8,
    airport_id: 1,
    user_id: 3,
    tip_category_id: 3,
  },
  {
    title: "Kids activities",
    content: "There's a softplay area not far from the Emirates departure lounge. It's free to use and there's a cafe too",
    likes: 13,
    airport_id: 1,
    user_id: 4,
    tip_category_id: 6,
  },
  {
    title: "Refill your water bottle",
    content: "There are water fountains in the airport - try the ones next to Gate 4 or 22",
    likes: 23,
    airport_id: 1,
    user_id: 5,
    tip_category_id: 2,
  },
  {
    title: "Best food at the terminal without a doubt",
    content: "Diwans serves amazing felafels and hummus. It's a bit pricey but worth it",
    likes: 5,
    airport_id: 1,
    user_id: 6,
    tip_category_id: 2,
  },
  {
    title: "If you need to rest, there's a great place to do it",
    content: "Comfortable chairs and a quiet area. It's a bit hidden so not many go there although they might now I've posted this!",
    likes: 2,
    airport_id: 1,
    user_id: 7,
    tip_category_id: 7,
  },
  {
    title: "Try the margueritas - take the edge off!",
    content: "I hate flying but love holidays LOL. Try the cocktails at St Elmo's - they're amazing",
    likes: 18,
    airport_id: 1,
    user_id: 8,
    tip_category_id: 2,
  },
])
puts tip
puts "Tips created!"
puts "-----------------"

puts "-----------------"
puts "Creating flights"

  flight = Flight.create!([
    {
      flight_number: "BA123",
      departure_time: Time.now,
      flight_destination: "Paris Charles de Gaulle",
      flight_status: "On time",
      gate_number: "G12",
      gate_open_time: Time.now.to_i - 3600,
      airport_id: 1,
    },
    {
      flight_number: "LH022",
      departure_time: Time.now,
      flight_destination: "Paris Charles de Gaulle",
      flight_status: "On time",
      gate_number: "E2",
      gate_open_time: Time.now.to_i - 3600,
      airport_id: 1,
    },

  ])
puts "Flights created!"
puts "-----------------"


puts "-----------------"
puts "Creating journeys"

  journey = Journey.create!([
    {
      flight_id: 1,
      user_id: 2
    }
  ])

puts "Journeys created!"
puts "-----------------"
