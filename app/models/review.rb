class Review

    attr_accessor :rating, :content
    attr_reader :customer, :restaurant

    @@all = []

    def initialize(customer, restaurant, rating, content)
        # ,
        @customer = customer
        @restaurant = restaurant
        if rating < 1
            @rating = 1
        elsif rating > 5
            @rating = 5
        else
            @rating = rating.round(0)
        end
        @content = content
        @@all << self
    end

    def self.all
        @@all
    end

  
end

