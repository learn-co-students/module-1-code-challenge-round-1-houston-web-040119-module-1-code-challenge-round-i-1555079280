require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

# review (customer, restaurant, content, rating)
# customer (first_name, last_name)
# rest(name)


r1 = Restaurant.new("r1")
r2 = Restaurant.new("r2")

c1 = Customer.new("c1","l1")
c2 = Customer.new("c2","l2")

rv1 = Review.new(c2,r1,"awsddsd",3)
rv2 = Review.new(c1,r1,"www",5)
rv3 = Review.new(c2,r2,"ww",1)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line