
class Customer
  attr_reader :first_name, :last_name

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def self.all
    @@all
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def reviews
    Review.all.select {|review| review.customer == self}
  end

  def add_review(restaurant, rating, content)
  Review.new(self, restaurant, rating, content)
  # - `Customer#add_review(restaurant, content, rating)`
#   - given a **restaurant object**, some review content (as a string), and a star rating (as an integer), creates a new review and associates it with that customer and restaurant.
  end

  def num_reviews
    total = 0
    self.reviews.each{|review| total += reviews.count}
    total
  # - `Customer#num_reviews`
#   - Returns the total number of reviews that a customer has authored
  end

  def restaurants
  result = Review.all.select{|review| review.customer == self}

  customer = result.map.uniq{|result| result.restaurant}

  # - `Customer#restaurants`
#   - Returns a **unique** array of all restaurants a customer has reviewed
  end







end
