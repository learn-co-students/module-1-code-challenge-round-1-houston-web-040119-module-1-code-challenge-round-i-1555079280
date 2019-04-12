require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

#customers
c1 = Customer.new("Vidhi", "Sharma")
c2 = Customer.new("Scott", "Ungchusri")

#restaurants
r1 = Restaurant.new("Cool Teacher Cafe")
r2 = Restaurant.new("Flatiron Cafe")

#reviews
rev1 = Review.new(c1, r1, 5, "The Coffee was great!")
rev2 = Review.new(c2, r1, 3, "Atmosphere was nice, but needs more stickers.")



binding.pry
0 #leave this here to ensure binding.pry isn't the last line