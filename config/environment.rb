require 'bundler/setup'
Bundler.require
require_rel '../app'
require 'pry'



c1 = Customer.new('aaa22', 'bbb')
c2 = Customer.new('ccc1', 'ddd')
c3 = Customer.new('eeedafd', 'zzz')
c4 = Customer.new('fffeeeeddd', 'hhh')
c5 = Customer.new('fffeeeeddd', 'ddddd')

r1 = Restaurant.new('piao')
r2 = Restaurant.new('cui')
r3 = Restaurant.new('yu')
r4 = Restaurant.new('ren')

review1 = Review.new(c1, r1, "asdfasdfasdfssssss", 5)
review2 = Review.new(c2, r1, "asdfasdfasdf11", 5)
review3 = Review.new(c3, r2, "asdfasdfasdff", 3)
review4 = Review.new(c3, r3, "asdfasdfasdfdddddddddd", 4)
review6 = Review.new(c3, r2, "asdfasdfasdfffff", 4)

review5 = Review.new(c4, r4, "asdfasdf", 4)















binding.pry
0
