require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


c1 = Customer.new("John","Smith")
c2 = Customer.new("Jane","Doe")
c3 = Customer.new("Charles","Hitt")
c4 = Customer.new("Bob","Ross")

r1 = Restaurant.new("Pizza")
r2 = Restaurant.new("Pasta")

rev1 = Review.new(c1,r1,"Great, will come back",5.0)
rev2 = Review.new(c1,r2,"Horrible, Never Again",1.0)
rev3 = Review.new(c2,r1,"So-so, it was just okay",3.0)
rev4 = Review.new(c3,r2,"Good",4.0)
rev5 = Review.new(c4,r1,"Bad, meh",2.0)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line