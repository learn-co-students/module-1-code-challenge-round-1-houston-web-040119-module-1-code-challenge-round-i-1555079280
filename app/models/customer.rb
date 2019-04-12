class Customer
  attr_reader :first_name, :last_name

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name

    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def all_reviews
    Review.all.select do |review|

      review.customer == self

    end
  end

  def add_review(restaurant, content, rating)
    Review.new(self, restaurant, content, rating)
  end

  def num_reviews
    self.all_reviews.count
  end

  def restaurants
    self.all_reviews.map {|review| review.restaurant}.uniq

  end

  def self.all
    @@all
  end

  def self.find_by_name(full_name)

    @@all.find {|customer| customer.full_name == full_name}
  end

  def self.find_all_by_first_name(first_name)
    @@all.select {|customer| customer.first_name == first_name}
  end

  def self.all_names
    @@all.map {|customer| customer.full_name}
  end
end
