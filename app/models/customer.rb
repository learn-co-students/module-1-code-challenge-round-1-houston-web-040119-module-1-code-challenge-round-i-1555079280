
# Customer#add_review(restaurant, content, rating)
# given a restaurant object, some review content (as a string), and a star rating (as an integer), creates a new review and associates it with that customer and restaurant.

# Customer#num_reviews
# Returns the total number of reviews that a customer has authored

# Customer#restaurants
# Returns a unique array of all restaurants a customer has reviewed

# Customer.find_by_name(name)
# given a string of a full name, returns the first customer whose full name matches

# Customer.find_all_by_first_name(name)
# given a string of a first name, returns an array containing all customers with that first name

# Customer.all_names
# should return an array of all of the customer full names

class Customer
  attr_reader :first_name, :last_name
  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all.push(self)
  end

  def full_name
    "#{first_name} #{last_name}"
  end
  
  def add_review(restaurant, content, rating)
    Review.new(self, restaurant, content, rating)
  end
  
  def num_reviews
    Review.all.select do |review|
      review.customer == self
    end.length
  end
  
  def restaurants
    reviews = Review.all.select do |review|
      review.customer == self
    end
    
    my_restaurants = reviews.map do |review|
      review.restaurant
    end
    
    my_restaurants.uniq
    
  end
  
  def self.all
    @@all
  end
  
  def self.find_by_name(name)
    name_sep = name.split
    
    Customer.all.find do |customer|
      customer.first_name == name_sep[0] && customer.last_name == name_sep[1]
    end
    
  end
  
  def self.find_all_by_first_name(name)
    Customer.all.select do |customer|
      customer.first_name == name
    end
  end
  
  def self.all_names
    
    names_full = []
    names_return = []
    
    Customer.all.each do |customer|
      name_full = []
      name_full.push(customer.last_name)
      name_full.push(customer.first_name)
      
      names_return.push(names_full.join(" "))
    end
    
    names_return
  end
  
end
