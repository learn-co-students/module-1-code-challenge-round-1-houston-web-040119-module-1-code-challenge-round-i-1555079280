class Restaurant
  attr_reader :name


  @@all = []
  def initialize(name)
    @name = name


    @@all << self
  end

  def reviews
    Review.all.select do |review|
      review.restaurant == self
    end
  end

  def customers
    self.reviews.map do |review|
      review.customer
    end
  end

  def average_star_rating
    total_rating_num = 0

    self.reviews.each do |review|
      total_rating_num = review.rating + total_rating_num
    end

    avg = total_rating_num / self.reviews.length

  end

  def review_longest_review
    #returns the review object with the most content for this restaurant
    self.reviews.max_by do |review|
      review.content_length
    end
  end
  
  def longest_review 
    #returns the content of the longest review for this restaurant
    self.review_longest_review.content
  end

  def self.find_by_name(name)
    self.all.find do |restaurant|
      restaurant.name == name
    end
  end

  def self.all
    @@all
  end

end
