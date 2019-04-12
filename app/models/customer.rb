class Customer
  attr_reader :first_name, :last_name , :review
  @@all =[]
  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @review =review
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    @@all
  end

  def add_review(restaurant,content,rating)
    Review.new(restaurant,self,content,rating)
  end

  def num_reviews #use .length somewhere
    self.all.review.length

  end

  def restaurants
    Review.all.select do |restaurants|
    Review.customer == self

  end
restaurants
end
