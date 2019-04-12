
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
    Review.all.select do |review|
      review.restaurant == self
    end
  end

  def customers
    reviews.map do |review|
      review.customer
    end
  end

  def average_star_rating
    arr = []
    reviews.map do |review|
      arr << review.rating
    end
    arr.sum / arr.length
  end

  def longest_review
    reviews.max_by(& :content)
  end

end
