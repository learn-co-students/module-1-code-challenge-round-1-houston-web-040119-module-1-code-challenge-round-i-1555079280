require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

r1 = Restaurant.new("Restaurant One")
r2 = Restaurant.new("Restaurant Two")
r3 = Restaurant.new("Best Restaurant")

c1 = Customer.new("Chuck",  "Larry")
c2 = Customer.new("Francis", "Bean")
c3 = Customer.new("Donald", "Duck")
c4 = Customer.new("Larry", "David")
c5 = Customer.new("Fred", "Flintstone")
c6 = Customer.new("Chuck", "Banner")

rev1 = Review.new(c1, r1, 3, "Not bad")
rev2 = Review.new(c2, r1, 2, "Not too bad")
rev3 = Review.new(c3, r1, 3, "Not bad")
rev4 = Review.new(c4, r1, 2, "Not too bad")
rev5 = Review.new(c5, r1, 1, "Pretty bad")
rev6 = Review.new(c1, r2, 3, "Not bad")
rev7 = Review.new(c2, r2, 4, "kinda good")
rev8 = Review.new(c3, r2, 4, "better than r1")
rev9 = Review.new(c4, r2, 3, "just as good as r1")
rev10 = Review.new(c5, r2, 4, "better than r1")
rev11 = Review.new(c1, r3, 5, "definitely the best")
rev12 = Review.new(c2, r3, 5, "definitely the best")
rev13 = Review.new(c3, r3, 5, "definitely the best")
rev14 = Review.new(c4, r3, 5, "definitely the best")
rev15 = Review.new(c5, r3, 5, "seriously, definitely the best")
rev16 = Review.new(c1, r3, 5, "still the best")



binding.pry
0 #leave this here to ensure binding.pry isn't the last line
