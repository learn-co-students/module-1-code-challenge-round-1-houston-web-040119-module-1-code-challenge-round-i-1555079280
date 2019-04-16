class Review
    attr_reader :customer, :restaurant, :star_rating, :content
    @@all = []

    def initialize(customer, restaurant, star_rating, content)
      @customer = customer
      @restaurant = restaurant
      @star_rating = star_rating
      @content = content
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

