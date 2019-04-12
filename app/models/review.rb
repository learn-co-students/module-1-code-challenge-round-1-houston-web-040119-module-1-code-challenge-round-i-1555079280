class Review

    attr_accessor :rating, :content, :content_length
    attr_reader :customer, :restaurant
    @@all = []
    
    def initialize(customer, restaurant, rating, content)
        @customer = customer
        @restaurant = restaurant
        @rating = rating
        @content = content

        @content_length = content.split.size

        @@all << self
    end

    def self.all
        @@all
    end
  
end

