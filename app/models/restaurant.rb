class Restaurant
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name

    @@all << self
  end

  def self.all
    @@all
  end

  def reviews
    Review.all.select {|review| review.restaurant == self}
  end

  def customers
    self.reviews.map {|review| review.customer}.uniq
  end

  def average_star_rating

    (self.reviews.map {|review| review.rating}.sum).to_f / self.reviews.count
  end

  def longest_review
    self.reviews.max_by {|review| review.content.length}
  end

  def self.find_by_name(name)
    @@all.find {|restaurant| restaurant.name == name}
  end
end
