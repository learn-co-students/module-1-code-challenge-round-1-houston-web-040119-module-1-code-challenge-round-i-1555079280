require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

c1 = Customer.new("F1", "L1")
c2 = Customer.new("F2", "L1")
c3 = Customer.new("F3", "L1")
c4 = Customer.new("F1", "L2")
c5 = Customer.new("F1", "L1")

res1 = Restaurant.new("R1")
res2 = Restaurant.new("R2")
res3 = Restaurant.new("R3")
res4 = Restaurant.new("R4")
res5 = Restaurant.new("R4")


rev1 = Review.new(c1,res1,15,"A")
rev2 = Review.new(c2,res1,5,"A")
rev3 = Review.new(c3,res1,5,"A")
rev4 = Review.new(c4,res2,1.3,"A")
rev5 = Review.new(c4,res3,4,"A")
rev6 = Review.new(c4,res1,4.8,"AGHGHJFIOL")
rev7 = Review.new(c5,res4,0,"A")
rev8 = Review.new(c1,res1,3.5,"B")








# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line