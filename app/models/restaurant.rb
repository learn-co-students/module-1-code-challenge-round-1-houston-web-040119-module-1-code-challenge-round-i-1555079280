class Restaurant
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self 
  end

  def self.all 
    @@all 
  end


  def reviews
    Review.all.select { |review| review.restaurant == self } 
  end

  def customers
    reviews.map { |review| review.customer }.uniq 
  end

  def average_star_rating
    rated_reviews = reviews.select { |review| review.rating != nil }
    if rated_reviews.length == 0
      return nil 
    end
    rated_reviews.inject(0) do |sum,review| 
      sum += review.rating
    end.to_f / rated_reviews.length.to_f
  end

  def longest_review 
    reviews.max_by { |review| (review.content || "").length }
  end

  def self.find_by_name(name)
    self.all.find { |restaurant| restaurant.name == name }
  end

end
