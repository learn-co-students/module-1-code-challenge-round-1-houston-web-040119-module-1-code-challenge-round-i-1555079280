require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


c1 = Customer.new("Bob","Baker")
c2 = Customer.new("Sally","Samuelson")
c3 = Customer.new("Harry","Horton")
c4 = Customer.new("Billy","Bob")
c5 = Customer.new("Rett","Roberts")


r1 = Restaurant.new("Old Yeller")
r2 = Restaurant.new("Eats Here")
r3 = Restaurant.new("Texmex Place")
r4 = Restaurant.new("Food And Margheritas")
r5 = Restaurant.new("Best Burger")

rev1 = Review.new(c1,r1,"Very tasty",5)
rev2 = Review.new(c2,r2,"OK",3)
rev3 = Review.new(c3,r3,"Pricey",4)
rev4 = Review.new(c4,r4,"Yum",5)
rev5 = Review.new(c5,r5,"Plenty to go around",2)
rev15 = Review.new(c1,r5,"Yes",5)
rev25 = Review.new(c2,r5,"No",1)
rev13 = Review.new(c1,r3,"Maybe",3)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line