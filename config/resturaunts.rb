class Resturaunt

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self

    end

    def self.all
        @@all
    end


    def review_list
        Review.all.select do |review|
            review.resturaunt == self
        end


    end

    def customer
        self.review_list.map do |review|
            review.customer
        end
    end

    def reviews 
        self.review_list.map do |review|
            review.content
        end

    end

    def average_star_rating
        total = 0
        a = self.review_list.map do |review|
            review.rating
        end
        sum = a.sum
        total_reviews = a.length
        (total += sum)/total_reviews
        total

    end

    def self.find_by_name(place)
        self.all.select do |resturaunts|
            resturaunts.name == place
        end
    end

end