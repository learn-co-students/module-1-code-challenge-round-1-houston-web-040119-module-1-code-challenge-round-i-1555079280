class Restaurant
  @@all =[]
  attr_reader :name , :review

  def initialize(name, review)
    @name = name
    @review = review
  @@all << self
  end

  def self.all
    @@all

  end


  def customers
    Review.customer.select do |restaurants|
      restaurants == self
    end
    restaurants

  end


  def reviews
    Restaurant.reviews
  end

  def average_star_rating
    total = Restaurant.all.review
  end



end
