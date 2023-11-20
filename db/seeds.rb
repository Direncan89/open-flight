airline = Airline.create([
  { name: "Emirates",
    image_url: "https://upload.wikimedia.org/wikipedia/commons/d/d0/Emirates_logo.svg"
  },
  { name: "British Airways",
    image_url: "https://i0.wp.com/www.conceptmanagement.co.uk/wp-content/uploads/2020/10/ba-logo.png?w=250&ssl=1"
  }
])

reviews = Review.create([
  {
    title: "Great Airline",
    description: "Lovely Flight",
    score: 5,
    airline: airline.first
  },
  {
    title: "Very Good",
    description: "Nice Flight",
    score: 5,
    airline: airline.first
  }
])
