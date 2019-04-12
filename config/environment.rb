require 'bundler/setup'
Bundler.require
require_rel '../app'


c1 = Customer.new("prati", "pandey")
c2 = Customer.new("vidhi", "sharma")
c3 = Customer.new("first", "last")

r1 = Restaurant.new("jimmy")
r2 = Restaurant.new("chick_filla")


rev1 = Review.new(c1, r1, 5)
rev2 = Review.new(c2, r2, 3)
rev3 = Review.new(c2, r2, 5)




binding.pry
0