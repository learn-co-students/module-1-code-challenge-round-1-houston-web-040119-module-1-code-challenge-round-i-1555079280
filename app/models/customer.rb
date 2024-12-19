class Customer
  attr_reader :first_name, :last_name
@@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

def self.all
  @@all
end

def all_review
  Review.all.select do |review|
    review.customer == self
  end
end

def restaurants
    all_review.map do |review|
      review.restaurants
    end
  end
  

  
def num_reviews
  all_review.length
end

def full_name
    "#{first_name} #{last_name}"
end
    
def add_review(restaurant, content, rating)
  review1 = Review.new(self, restaurant, rating, content)

end

end
