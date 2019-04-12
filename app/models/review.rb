class Review
    attr_reader :customer, :restaurant, :star_rating
    @@all = []

    def initialize(customer, restaurant, star_rating)
      @customer = customer
      @restaurant = restaurant
      @star_rating = star_rating
      @@all << self
    end


    def self.all
        @@all
      end
     
      def customers
        @@all.map do |review|
        review.customer == self
      end
    end

def restaurants
    Review.all.map do |review|
        review.resturant 
end
end
 def rating
    Review.all.map do |review|
        review.star_rating
    end
 end

end

