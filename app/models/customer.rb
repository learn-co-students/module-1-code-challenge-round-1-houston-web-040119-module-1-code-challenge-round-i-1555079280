class Customer
  attr_reader :first_name, :last_name
  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    @@all
  end

  def reviews
    Review.all.select do |review|
      review.customer == self
    end
  end

  def restaurants
    reviews.map do |review|
      review.restaurant
    end
  end

  def num_reviews
    reviews.length
  end

  def add_review(restaurant,content,rating)
    Review.new(self,restaurant,content,rating)
  end
end
