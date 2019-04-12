# Restaurant#customers
# Returns a unique list of all customers who have reviewed a particular restaurant.

# Restaurant#reviews
# returns an array of all reviews for that restaurant

# Restaurant#average_star_rating
# returns the average star rating for a restaurant based on its reviews

# Restaurant#longest_review
# returns the longest review content for a given restaurant




class Restaurant
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all.push(self)
  end
  
  def reviews
    Review.all.select do |review|
      review.restaurant == self
    end
  end
  
  def customers
    self.reviews.map do |review|
      review.customer
    end.uniq
  end
  
  def average_star_rating
    stars = self.reviews.map do |review|
      review.rating
    end
    
    average = stars.sum/stars.length
    
    average
    
  end
  
  def longest_review
    contents = self.reviews.map do |review|
      review.content
    end
    
    contents.max_by do |x|
      x.length
    end
    
  end
  
  def self.find_by_name(name)
    Restaurant.all.select do |restaurant|
      restaurant.name == name
  end
  
  
  def self.all
    @@all
  end
  
end
