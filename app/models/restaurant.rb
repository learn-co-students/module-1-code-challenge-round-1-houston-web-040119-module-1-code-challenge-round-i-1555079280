#### Restaurant

class Restaurant

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def reviews
    # returns an array of all reviews for that restaurant
    Review.all.select {|review| review.restaurant == self}
  end

  def customers
    # Returns a **unique** list of all customers who have reviewed a particular restaurant
    self.reviews.map {|review| review.customer}.uniq
  end

  def average_star_rating
    # returns the average star rating for a restaurant based on its reviews
    arr = self.reviews.map {|review| review.rating}
    arr.inject(0.0) { |sum, rating| sum + rating } / arr.size
  end

  def longest_review
    # returns the longest review content for a given restaurant
    self.reviews.max_by{|review| review.content.length}.content
  end

  def self.find_by_name(name)
    # given a string of restaurant name, returns the first restaurant that matches
    Restaurant.all.find{|restaurant| restaurant.name == name}
  end

  def self.all
    @@all
  end

end
