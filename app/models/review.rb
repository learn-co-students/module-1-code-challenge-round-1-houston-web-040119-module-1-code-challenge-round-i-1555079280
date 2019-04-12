class Review
    attr_reader :customer, :restaurant
    attr_accessor :content, :rating
  @@all = []

  def initialize(customer,restaurant,content=nil,rating=nil)
    @customer = customer 
    @restaurant = restaurant 
    @rating = rating 
    @content = content 
    @@all << self  
  end

  def self.all 
    @@all 
  end


end

