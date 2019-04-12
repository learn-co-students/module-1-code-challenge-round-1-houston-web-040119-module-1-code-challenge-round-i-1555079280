require 'bundler/setup'
Bundler.require
require_rel '../app'
require 'pry'

require_relative 'reviews.rb'
require_relative 'resturaunts.rb'
require_relative 'customers.rb'

applebees = Resturaunt.new("Applebees")
tgifriday = Resturaunt.new("T.G.I. Fridays")

bob = Customer.new("Bob", "Smith")
joe = Customer.new("Joe", "Average")

#    (resturaunt, customer, rating)
review1 = Review.new(applebees, joe, 2, "TERRIBLE!!!")
review2 = Review.new(tgifriday, bob, 5, "Great food")
review3 = Review.new(applebees, bob, 1, "AWFUL SERVICE!!!")

binding.pry

"yum"