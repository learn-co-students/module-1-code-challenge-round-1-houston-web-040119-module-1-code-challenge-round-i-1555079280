class Customer
  attr_reader :first_name, :last_name

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end
end

def restaurant
  results = Review.all.select do |restaurant|
    restaurant.review = self
  end

 def num_reviews
    self.review.all.map do |review|
      review.customer
    end

    def find_by_name(name)
      self.first_name.select = name
    end

  def self.all
    @@all = self

  end
