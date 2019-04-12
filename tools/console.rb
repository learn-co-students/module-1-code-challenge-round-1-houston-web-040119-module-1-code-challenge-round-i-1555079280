require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

#create fake customers
#Customer.new(first_name, last_name)
c1 = Customer.new("Joe","Smith")
c2 = Customer.new("Susan","Jones")
c3 = Customer.new("Justin","Avioli")
c4 = Customer.new("Piere","Reviewsalot")

#create fake restaurants
#Restaurant.new(name)
r1 = Restaurant.new("McDonalds")
r2 = Restaurant.new("Flemings Steakhouse")
r3 = Restaurant.new("Ruby Tuesdays")

#create fake reviews
# Review.new(customer,restaurant,rating,content)
rev1 = Review.new(c1,r1,1,"It smells alot like pee.")
rev2 = Review.new(c2,r1,2,"Not the best, but the fries are good")
rev3 = Review.new(c3,r1,1,"The ice cream machiene never works")
rev4 = Review.new(c4,r2,5,"The best steakhouse in town!")
rev5 = Review.new(c1,r2,4,"A little pricey, but the food was fantastic!")
rev6 = Review.new(c4,r1,1,"Is this a joke?")
rev7 = Review.new(c4,r3,3,"The ambieance is okay, but the service is great!")

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
