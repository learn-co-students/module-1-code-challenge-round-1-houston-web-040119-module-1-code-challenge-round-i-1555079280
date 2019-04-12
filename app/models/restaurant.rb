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
    Review.all.select {|r| r.restaurant == self}
  end

  def customers
    reviews.map {|r| r.customer}.uniq
  end

  def average_star_rating
    reviews.map {|r| r.rating}.sum / reviews.count.to_f
  end

  def self.find_by_name(name)
    all.select {|r| r.name == name}
  end

  def longest_review
    reviews.max_by {|r| r.content.length}
  end


end
