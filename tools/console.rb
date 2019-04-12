require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

c1 = Customer.new("Bob", "Marley")
c2 = Customer.new("Joe", "Young")
c3 = Customer.new("Patrick", "Star")
c4 = Customer.new("Bubba", "Bass")

r1 = Restaurant.new("The Krusty Krab")
r2 = Restaurant.new("The Chumbucket")
r3 = Restaurant.new("Super Weenie Hut Jr")

review1 = Review.new(c1, r1, 'BEST BURGER EVER!!', 5)
review2 = Review.new(c2, r1, 'They forgot the pickles', 4)
review3 = Review.new(c3, r2, 'Is this actually food?', 3)
review4 = Review.new(c4, r3, 'Why am I even here?', 1)






binding.pry
0 #leave this here to ensure binding.pry isn't the last line