class Restaurant
  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self

  end

def customer
  results = review.all.select do |customer|
    customer.review = self
  end

  def longest_review
    self.all.max_by do|review|
      review.longest_review
    end

  end

  def reviews
    results = review.all.select do |review|
      review = self
    end
    reviews = results.map do |result|
      results.review
    end
def self .all
  @@all
end 
end
