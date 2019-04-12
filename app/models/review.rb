class Review

att_accessor :restaurant , :customer , :rating , :content

  @@all = []

  def initialize(restaurant,customer,rating,content)
    @restaurant = restaurant
    @customer = customer
    @rating = rating
    @content = content
    
    @@all << self

  end

  def self.all
    @@all = []


  end

  def review

  end

  def restaurant

  end


  def rating

  end



end
