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

  def full_name
    "#{first_name} #{last_name}"
  end

  def add_review(restaurant, rating, content)
    Review.new(self, restaurant, rating, content )
  end

  def reviews
    Review.all.select {|r| r.customer == self}
  end

  def num_reviews
    reviews.count
  end

  def restaurants
    reviews.map {|r| r.restaurant}.uniq
  end

  def self.find_by_name(name)
    all.select {|c| c.full_name == name}
  end

  def self.find_all_by_first_name(name)
    all.select {|c| c.first_name == name}
  end

  def self.all_names
    all.map {|c| c.full_name}
  end

end
