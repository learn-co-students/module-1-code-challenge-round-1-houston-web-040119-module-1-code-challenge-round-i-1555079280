class Restaurant
  attr_reader :name, :star_rating
  @@all = []

  def initialize(name)
    @name = name
    
    @@all << self
  end

  def self.all
    @@all
  end
  
def all_review
  Review.all.select do |review|
    review.restaurant == self
  end
end

def customers
  all_review.map do |review|
    review.customer
  end

def reviews
  all_review
end

# def sum
#   total_sum = all_review.map do |review|
#     review.star_rating
# end.sum
# end

def average_star_ratings
 total_sum = reviews.map do |review|
    review.star_rating
  end.sum
total_sum / reviews.length
end
end




end
