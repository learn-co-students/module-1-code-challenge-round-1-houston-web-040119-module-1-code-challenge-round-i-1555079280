
class Restaurant
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def reviews
    Review.all.select {|review| review.restaurant == self}
    # - `Restaurant#reviews`
#   - returns an array of all reviews for that restaurant
  end

  def customers
    self.reviews.map {|restaurant|restaurant.customer}  
    # - `Restaurant#customers`
#   - Returns a **unique** list of all customers who have reviewed a particular restaurant.
  end

  def average_star_rating

    stars = reviews.map{|review| review.rating}

    stars.instance_eval {reduce (:+) / size.to_f}
    # - `Restaurant#average_star_rating`
#   - returns the average star rating for a restaurant based on its reviews
  end

  def review_count
    self.reviews.count
  end

  def longest_review
    self.all.max_by{|restaurant| restaurant.review.count}
    # - `Restaurant#longest_review`
#   - returns the longest review content for a given restaurant
  end

end
