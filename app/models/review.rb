# #### Build out the following methods on the `Review` class

class Review

  attr_reader :customer, :restaurant, :rating, :content
  # Review#customer - returns the customer object for that given review (Once a review is created,
  #    I should not be able to change the author
  # Review#restaurant - returns the restaurant object for that given review - Once a review is created,
  #    I should not be able to change the restaurant
  # Review#rating` - returns the star rating for a restaurant. This should be an integer from 1-5

  @@all = []

  def initialize (customer,restaurant,rating,content)
    @customer = customer
    @restaurant = restaurant
    @rating = rating.clamp(1,5)
    @content = content
    @@all << self
  end

  def self.all
    @@all
  end

end
