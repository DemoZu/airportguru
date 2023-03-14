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
Journey.destroy_all
puts "database cleaned!"

puts "Seeding database with users, airports, facilities, tips and journeys..."

puts "---------------------------------"
puts "creating users..."
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
  },
  {
    first_name: "Harpreet",
    last_name: "Singh",
    nickname: "Harps",
    bio: "Professional 23 year old. Loves to travel.",
    email: "harpreet@singh.com",
    password: "123456"
  },
  {
    first_name: "Petra",
    last_name: "Rebakova",
    nickname: "PetraR",
    bio: "Mum to one boy. Work as a teacher.",
    email: "petra@rebakova.com",
    password: "123456"
  }
])

puts user.pluck(:nickname)
puts "users created!"
puts "---------------------------------"

puts "creating airports..."

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
    iata_name: "LGW",
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

puts airports.pluck(:name).uniq
puts "Airports created!"

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
puts facility_categories.pluck(:name).uniq
puts "Facility categories created!"
puts "---------------------------------"

puts "Creating facilities..."

facilities = Facility.create!([
  {
    title: "Caffe Nero",
    airport_id: 8,
    facility_category_id: 1
  },
  {
    title: "Costa",
    airport_id: 8,
    facility_category_id: 1
  },
  {
    title: "Grain Store",
    airport_id: 8,
    facility_category_id: 1
  },
  {
    title: "Joes Coffee House",
    airport_id: 8,
    facility_category_id: 1
  },
  {
    title: "Pret A Manger",
    airport_id: 8,
    facility_category_id: 1
  },
  {
    title: "Starbucks",
    airport_id: 8,
    facility_category_id: 1
  },
  {
    title: "Warrens Bakery",
    airport_id: 8,
    facility_category_id: 1
  },
  {
    title: "Juniper & Co Bar & Kitchen",
    airport_id: 8,
    facility_category_id: 3
  },
  {
    title: "Pure",
    airport_id: 8,
    facility_category_id: 3
  },
  {
    title: "Shake Shack",
    airport_id: 8,
    facility_category_id: 3
  },
  {
    title: "Sonama",
    airport_id: 8,
    facility_category_id: 3
  },
  {
    title: "The Red Lion",
    airport_id: 8,
    facility_category_id: 3
  },
  {
    title: "Tortilla",
    airport_id: 8,
    facility_category_id: 3
  },
  {
    title: "Wagamama",
    airport_id: 8,
    facility_category_id: 3
  },
  {
    title: "The Red Lion Bar & Restaurant",
    airport_id: 8,
    facility_category_id: 4
  },
  {
    title: "Accessorize",
    airport_id: 8,
    facility_category_id: 2
  },
  {
    title: "Aerospa",
    airport_id: 8,
    facility_category_id: 2
  },
  {
    title: "Bobbi Brown",
    airport_id: 8,
    facility_category_id: 2
  },
  {
    title: "Boots",
    airport_id: 8,
    facility_category_id: 2
  },
  {
    title: "Boss",
    airport_id: 8,
    facility_category_id: 2
  },
  {
    title: "Case",
    airport_id: 8,
    facility_category_id: 2
  },
  {
    title: "Change Group",
    airport_id: 8,
    facility_category_id: 2
  },
  {
    title: "Collection",
    airport_id: 8,
    facility_category_id: 2
  },
  {
    title: "Dune",
    airport_id: 8,
    facility_category_id: 2
  },
  {
    title: "Fatface",
    airport_id: 8,
    facility_category_id: 2
  },
  {
    title: "Glorious Britain",
    airport_id: 8,
    facility_category_id: 2
  },
  {
    title: "Hamleys",
    airport_id: 8,
    facility_category_id: 2
  },
  {
    title: "Harrods",
    airport_id: 8,
    facility_category_id: 2
  },
  {
    title: "Havianas",
    airport_id: 8,
    facility_category_id: 2
  },
  {
    title: "Inmotion",
    airport_id: 8,
    facility_category_id: 2
  },
  {
    title: "JD",
    airport_id: 8,
    facility_category_id: 2
  },
  {
    title: "Jo Malone",
    airport_id: 8,
    facility_category_id: 2
  },
  {
    title: "Kids' Stop",
    airport_id: 8,
    facility_category_id: 2
  },
  {
    title: "LEGO",
    airport_id: 8,
    facility_category_id: 2
  },
  {
    title: "Aerospa",
    airport_id: 8,
    facility_category_id: 2
  },
  {
    title: "Ray-Ban",
    airport_id: 1,
    facility_category_id: 1
  },
  {
    title: "REISS",
    airport_id: 8,
    facility_category_id: 2
  },
  {
    title: "Sunglass Hut",
    airport_id: 8,
    facility_category_id: 2
  },
  {
    title: "Superdry",
    airport_id: 8,
    facility_category_id: 2
  },
  {
    title: "TED BAKER",
    airport_id: 8,
    facility_category_id: 2
  },
  {
    title: "WATCHES OF SWITZERLAND",
    airport_id: 8,
    facility_category_id: 2
  },
  {
    title: "well Pharmacy",
    airport_id: 8,
    facility_category_id: 2
  },
  {
    title: "Whittard of Chelsea",
    airport_id: 8,
    facility_category_id: 2
  },
  {
    title: "Aerospa",
    airport_id: 8,
    facility_category_id: 2
  },

  {
    title: "WH Smith",
    airport_id: 1,
    facility_category_id: 1
  },
  {
    title: "WORLD DUTY FREE",
    airport_id: 8,
    facility_category_id: 2
  },
  {
    title: "NO1 Lounge",
    airport_id: 8,
    facility_category_id: 7
  },
  {
    title: "Clubrooms",
    airport_id: 8,
    facility_category_id: 7
  },
  {
    title: "Plaza Premium Lounge",
    airport_id: 8,
    facility_category_id: 7
  },
  {
    title: "The Gateway Lounge",
    airport_id: 8,
    facility_category_id: 7
  },
  {
    title: "ATM",
    airport_id: 8,
    facility_category_id: 6
  },
  {
    title: "Children's Play Area",
    airport_id: 8,
    facility_category_id: 6
  },
  {
    title: "Currency Exchange",
    airport_id: 8,
    facility_category_id: 6
  },
  {
    title: "Information points",
    airport_id: 8,
    facility_category_id: 6
  },
  {
    title: "Multi-faith prayer rooms",
    airport_id: 8,
    facility_category_id: 6
  },
  {
    title: "Pharmacy",
    airport_id: 8,
    facility_category_id: 6
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
  },
  {
    title: "Boots",
    airport_id: 1,
    facility_category_id: 2
  },
  {
    title: "Burberry",
    airport_id: 1,
    facility_category_id: 2
  },
  {
    title: "Cath Kidson",
    airport_id: 1,
    facility_category_id: 2
  },
  {
    title: "Gucci",
    airport_id: 1,
    facility_category_id: 2
  },
  {
    title: "Mulberry",
    airport_id: 1,
    facility_category_id: 2
  },
  {
    title: "WHSmith",
    airport_id: 1,
    facility_category_id: 2
  },
  {
    title: "World Duty Free",
    airport_id: 1,
    facility_category_id: 2
  },
  {
    title: "Sunglasses Hut",
    airport_id: 1,
    facility_category_id: 2
  },
   {
    title: "Fortum & Mason Bar",
    airport_id: 1,
    facility_category_id: 4
  },
  {
    title: "ATM",
    airport_id: 1,
    facility_category_id: 6
  },
  {
    title: "Children's Play Area",
    airport_id: 1,
    facility_category_id: 6
  },
  {
    title: "Currency Exchange",
    airport_id: 1,
    facility_category_id: 6
  },
  {
    title: "Information points",
    airport_id: 1,
    facility_category_id: 6
  },
  {
    title: "Multi-faith prayer rooms",
    airport_id: 1,
    facility_category_id: 6
  },
  {
    title: "Pharmacy",
    airport_id: 1,
    facility_category_id: 6
  },
  {
    title: "Plaza Premium Lounge",
    airport_id: 1,
    facility_category_id: 7
}
])

puts facilities.pluck(:title)
puts "Facilities created!"
puts "---------------------------------"

puts "Creating tip categories..."

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
puts tip_categories.pluck(:name)
puts "Tip categories created!"
puts "---------------------------------"

puts "Creating tips..."

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
    user_id: 10,
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





  {
    title: "Charge your phone",
    content: "There are charging points in the airport - try the ones next to Gate 12 or if they're busy the ones by Gate 28B are quiet.",
    likes: 37,
    user_id: 1,
    airport_id: 8,
    tip_category_id: 1,
  },
  {
    title: "Good place to watch the planes",
    content: "There's a great view of the runway from the top floor, opposite Gate 8",
    likes: 3,
    user_id: 1,
    airport_id: 8,
    tip_category_id: 5,
  },
  {
    title: "Wagamama is worth visiting if you need to eat before your flight",
    content: "Just as good as the one in Leamington Spa that I go to all the time. Try the Katsu curry",
    likes: 12,
    airport_id: 8,
    user_id: 2,
    tip_category_id: 2,
  },
  {
    title: "Pamper yourself!",
    content: "Have a quick neck massage for £15 or get your nails done at Aerospa. Staff are great.",
    likes: 6,
    airport_id: 8,
    user_id: 3,
    tip_category_id: 4,
  },
  {
    title: "Treat yourself to lounge access",
    content: "So worth doing. Costs from £40 but you get unlimited food and drink and it's much quieter than the terminal! I went to Clubrooms. ",
    likes: 12,
    airport_id: 8,
    user_id: 9,
    tip_category_id: 4,
  },
  {
    title: "Kids activities",
    content: "There's a softplay area not far from the Emirates departure lounge. It's free to use and there's a cafe too",
    likes: 13,
    airport_id: 8,
    user_id: 4,
    tip_category_id: 6,
  },
  {
    title: "Keep your kids entertained on the flight!",
    content: "Kids' Stop sell lots of toys and colouring books which are great for keeping the kids occupied on the flight or while you're waiting!",
    likes: 7,
    airport_id: 8,
    user_id: 10,
    tip_category_id: 6,
  },
  {
    title: "Refill your water bottle",
    content: "There are water fountains in the airport - try the ones next to Gate 4 or 22",
    likes: 23,
    airport_id: 8,
    user_id: 5,
    tip_category_id: 2,
  },
  {
    title: "Who doesn't love cake?!",
    content: "Warrens Bakery have the best cakes. Freshly baked each day. Try the carrot cake - they sell out quickly!",
    likes: 15,
    airport_id: 8,
    user_id: 3,
    tip_category_id: 2,
  },
  {
    title: "If you need to rest, there's a great place to do it",
    content: "Comfortable chairs and a quiet area. It's a bit hidden so not many go there although they might now I've posted this!",
    likes: 2,
    airport_id: 8,
    user_id: 7,
    tip_category_id: 7,
  },
  {
    title: "Try the margueritas - take the edge off!",
    content: "I hate flying but love holidays LOL. Try the cocktails at St Elmo's - they're amazing",
    likes: 18,
    airport_id: 8,
    user_id: 8,
    tip_category_id: 2,
  },
  {
    title: "Healthy food options",
    content: "Caters for vegans and those after healthy food. Try the quinoa salad with beet juice.",
    likes: 8,
    airport_id: 8,
    user_id: 6,
    tip_category_id: 2,
  },
  {
    title: "Currency exchange",
    content: "There's a currency exchange just as you exit Duty Free. Good if you've forgotted to get currency. Rates aren't too bad",
    likes: 15,
    airport_id: 8,
    user_id: 9,
    tip_category_id: 4,
  },




])
puts tip.pluck(:title)
puts "Tips created!"
puts "---------------------------------"

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


  ])
puts meetup_categories.pluck(:meetup_topic)
puts "Meetup categories created!"
puts "---------------------------------"

puts "Creating Meetups... "
meetup = Meetup.create!([
  {
    user_id: 1,
    meetup_category_id: 1,
    airport_id: 1,
    content: "Let's get together for a chat over a coffee",
  },
  {
    user_id: 2,
    meetup_category_id: 2,
    airport_id: 1,
    content: "Anyone fancy catching a drink at the bar?",
  },
  {
    user_id: 3,
    meetup_category_id: 3,
    airport_id: 1,
    content: "Anyone else going to Paris? My flight is delayed",
  },
])


puts meetup.pluck(:content)
puts "Meetups created!"
puts "---------------------------------"


puts "Creating flights...."

flight = Flight.create!([


{
    flight_number: "EZ8324",
    departure_time: Time.new + 11111,
    airport_id: 18,
    flight_destination: "London Gatwick",
    flight_status: "On Time",
    gate_number: "4",
    gate_open_time: Time.new + 8000
  },
  {
    flight_number: "BA123",
    departure_time: Time.new + 6000,
    airport_id: 1,
    flight_destination: "Paris Charles de Gaulle",
    flight_status: "On Time",
    gate_number: "TBC",
    gate_open_time: Time.new + 3000
  },
  {
    flight_number: "FL234",
    departure_time: Time.new + 6000,
    airport_id: 2,
    flight_destination: "Italy",
    flight_status: "On Time",
    gate_number: "TBC",
    gate_open_time: Time.new + 3000
  },
  {
    flight_number: "BA24",
    departure_time: Time.new + 9000,
    airport_id: 1,
    flight_destination: "Paris Charles de Gaulle",
    flight_status: "On Time",
    gate_number: "12",
    departure_time: Time.new + 6000
  },
  {
    flight_number: "ZA999",
    departure_time: Time.new + 6000,
    airport_id: 1,
    flight_destination: "South Africa",
    flight_status: "On Time",
    gate_number: "TBC",
    gate_open_time: Time.new + 3000
  },
  {
    flight_number: "AC6965",
    departure_time: Time.new + 10000,
    airport_id: 1,
    flight_destination: "Dusseldorf",
    flight_status: "On Time",
    gate_number: "TBC",
    gate_open_time: Time.new + 7000
  },
  {
    flight_number: "UA9621",
    departure_time: Time.new + 9000,
    airport_id: 1,
    flight_destination: "Dusseldorf",
    flight_status: "On Time",
    gate_number: "TBC",
    gate_open_time: Time.new + 6000
  },
  {
    flight_number: "SQ308",
    departure_time: Time.new + 12000,
    airport_id: 1,
    flight_destination: "Singapore",
    flight_status: "On Time",
    gate_number: "TBC",
    gate_open_time: Time.new + 9000,
  },
  {
    flight_number: "EI168",
    departure_time: Time.new + 10000,
    airport_id: 1,
    flight_destination: "Dublin",
    flight_status: "On Time",
    gate_number: "TBC",
    gate_open_time: Time.new + 7000,
  },
  {
    flight_number: "LH2476",
    departure_time: Time.new + 10900,
    airport_id: 1,
    flight_destination: "Munich",
    flight_status: "On Time",
    gate_number: "TBC",
    gate_open_time: Time.new + 8000,
  },
  {
    flight_number: "SK505",
    departure_time: Time.new + 12000,
    airport_id: 1,
    flight_destination: "Copenhagen",
    flight_status: "On Time",
    gate_number: "TBC",
    gate_open_time: Time.new + 9000,
  },
  {
    flight_number: "AC6965",
    departure_time: Time.new + 12000,
    airport_id: 1,
    flight_destination: "Dusseldorf",
    flight_status: "On Time",
    gate_number: "TBC",
    gate_open_time: Time.new + 9000,
  },
  {
    flight_number: "TP7444",
    departure_time: Time.new + 12000,
    airport_id: 1,
    flight_destination: "Athens",
    flight_status: "On Time",
    gate_number: "TBC",
    gate_open_time: Time.new + 9000,
  },
  {
    flight_number: "UA9762",
    departure_time: Time.new + 12000,
    airport_id: 1,
    flight_destination: "Zurich",
    flight_status: "On Time",
    gate_number: "TBC",
    gate_open_time: Time.new + 9000,
  },



  {
    flight_number: "EK012",
    airport_id: 8,
    departure_time: Time.new + 6180,
    flight_destination: "Dubai",
    flight_status: "On Time",
    gate_number: "25",
    gate_open_time: Time.new + 3000
  },
  {
    flight_number: "QF8012",
    airport_id: 8,
    departure_time: Time.new + 9180,
    flight_destination: "Dubai",
    flight_status: "On Time",
    gate_number: "22",
    gate_open_time: Time.new + 6500
  },
  {
    flight_number: "EZY8915",
    airport_id: 8,
    departure_time: Time.new + 10180,
    flight_destination: "Faro",
    flight_status: "On Time",
    gate_number: "12",
    gate_open_time: Time.new + 7500
  },
  {
    flight_number: "EZY8861",
    airport_id: 8,
    departure_time: Time.new + 10180,
    flight_destination: "Hurghada",
    flight_status: "On Time",
    gate_number: "12",
    gate_open_time: Time.new + 7500
  },
  {
    flight_number: "EJU8717",
    airport_id: 8,
    departure_time: Time.new + 9180,
    flight_destination: "Lisbon",
    flight_status: "On Time",
    gate_number: "32",
    gate_open_time: Time.new + 5500
  },
  {
    flight_number: "EZY8201",
    airport_id: 8,
    departure_time: Time.new + 10180,
    flight_destination: "Milan-Linate",
    flight_status: "On Time",
    gate_number: "22",
    gate_open_time: Time.new + 8500
  },
  {
    flight_number: "TS729",
    airport_id: 8,
    departure_time: Time.new + 6180,
    flight_destination: "Montreal",
    flight_status: "On Time",
    gate_number: "29",
    gate_open_time: Time.new + 3500
  },
  {
    flight_number: "EZY8663",
    airport_id: 8,
    departure_time: Time.new + 9180,
    flight_destination: "Alicante",
    flight_status: "On Time",
    gate_number: "24",
    gate_open_time: Time.new + 6700
  },
  {
    flight_number: "TP1331",
    airport_id: 8,
    departure_time: Time.new + 9180,
    flight_destination: "Porto",
    flight_status: "On Time",
    gate_number: "20",
    gate_open_time: Time.new + 6700
  },
  {
    flight_number: "EZY8875",
    airport_id: 8,
    departure_time: Time.new + 9180,
    flight_destination: "Amsterdam",
    flight_status: "Delayed",
    gate_number: "20",
    gate_open_time: Time.new + 6700
  },
  {
    flight_number: "EZY8295",
    airport_id: 8,
    departure_time: Time.new + 10180,
    flight_destination: "Innsbruck",
    flight_status: "On Time",
    gate_number: "18B",
    gate_open_time: Time.new + 8500
  },
  {
    flight_number: "B6044",
    airport_id: 8,
    departure_time: Time.new + 9180,
    flight_destination: "New York",
    flight_status: "On Time",
    gate_number: "39",
    gate_open_time: Time.new + 6600
  },
  {
    flight_number: "EZY8277",
    airport_id: 8,
    departure_time: Time.new + 6180,
    flight_destination: "Madrid",
    flight_status: "Cancelled",
    gate_number: "39",
    gate_open_time: Time.new + 4700
  },
  {
    flight_number: "EZY833",
    airport_id: 8,
    departure_time: Time.new + 9180,
    flight_destination: "Belfast International",
    flight_status: "On Time",
    gate_number: "12",
    gate_open_time: Time.new + 7500
  },
  {
    flight_number: "EZY8223",
    airport_id: 8,
    departure_time: Time.new + 8500,
    flight_destination: "Valencia",
    flight_status: "On Time",
    gate_number: "17",
    gate_open_time: Time.new + 6500
  },
  {
    flight_number: "EZY8355",
    airport_id: 8,
    departure_time: Time.new+ 7180,
    flight_destination: "Nice",
    flight_status: "On Time",
    gate_number: "17",
    gate_open_time: Time.new + 6200
  },
  {
    flight_number: "EZY8411",
    airport_id: 8,
    departure_time: Time.new + 3180,
    flight_destination: "Lyon",
    flight_status: "On Time",
    gate_number: "13",
    gate_open_time: Time.new + 2500
  },
  {
    flight_number: "EZY8343",
    airport_id: 8,
    departure_time: Time.new + 8180,
    flight_destination: "Hamburg",
    flight_status: "Delayed",
    gate_number: "11",
    gate_open_time: Time.new + 6570
  },
  {
    flight_number: "EZY8325",
    airport_id: 8,
    departure_time: Time.new + 8180,
    flight_destination: "Paris-Charles de Gaulle",
    flight_status: "On Time",
    gate_number: "10B",
    gate_open_time: Time.new + 6580
  },

])

puts flight.pluck(:flight_number)
puts "Flights created!"
puts "---------------------------------"



# puts "-----------------"
# puts "Creating journeys"

# journeys = Journey.create!([
#   {
#     user_id: 1,
#     flight_id: 1,
#   },
#   {
#     user_id: 2,
#     flight_id: 1,
#   },
#   {
#    user_id: 3,
#    flight_id: 2,
#   },
#   {
#     user_id: 4,
#    flight_id: 2,
#   },
# ])
# puts journeys
# puts "Journey created!"
# puts "-----------------"




# puts "Creating journeys"

#   journey = Journey.create!([
#     {
#       flight_id: 1,
#       user_id: 2
#     }
#   ])

# puts "Journeys created!"
# puts "-----------------"
