class Customer

    attr_accessor :first_name, :last_name

    @@all = []

    def initialize(first_name, last_name)
        @first_name = first_name
        @last_name = last_name
        @@all << self
    end

    def self.all
        @@all
    end

    def add_review(resturaunt, rating, content)
        Review.new(resturaunt, self, rating, content)
    end


    def resturaunts
        Review.all.select do |review|
            review.customer == self
        end

    end

    def num_reviews
        self.resturaunts.count
    end

    def self.find_by_name(reviewer_first, reviewer_last)
        self.all.select do |people|
            people.first_name == reviewer_first
            people.last_name == reviewer_last
        end

    end

    def self.find_by_first_name(name)
        self.all.select do |people|
            people.first_name == name
        end
    end

    def self.all_names
        arr = []
        self.all.map do |people|
            arr.push(people.first_name + " " + people.last_name)
        end
        arr
    end

end