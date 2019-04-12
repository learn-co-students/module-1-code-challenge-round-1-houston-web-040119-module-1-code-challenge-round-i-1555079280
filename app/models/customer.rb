class Customer
  attr_reader :first_name, :last_name

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name

    @@all << self
  end

  def self.all
    @@all
  end

  def num_reviews
    Review.all.select do |review|
      review.customer == self
    end
  end

  def restaurants
    self.num_reviews.map do |review|
      review.restaurant
    end
  end

  def add_review(restaurant, rating, content)
    Review.new(self, restaurant, rating, content)
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.find_by_first_name(name)
    self.all.select do |customer|
      customer.name == name
    end
  end

  def self.all_names
    full_name_array = []

    self.all.each do |customer|
      full_name_array << customer.full_name 
    end
    full_name_array
  end

end
