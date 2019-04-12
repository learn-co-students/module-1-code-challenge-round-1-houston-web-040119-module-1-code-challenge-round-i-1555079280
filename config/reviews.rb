class Review

    attr_accessor :rating
    attr_reader :resturaunt, :customer, :content

    @@all = []

    def initialize(resturaunt, customer, rating, content)
        @resturaunt = resturaunt
        @customer = customer
        @rating = rating
        @content = content
        @@all << self

    end

    def self.all
        @@all
    end




    def self.customer(name)
        self.all.select do |reviews|
            reviews.customer == name
        end

    end



    def self.resturaunt(name)
        self.all.select do |reviews|
            reviews.resturaunt == name
        end

    end

    def self.rating(name)


    end

    # def average_star_rating
    #     total = 0
    #     a = self.review_list.map do |review|
    #         review.rating
    #     end
    #     sum = a.sum
    #     total_reviews = a.length
    #     (total += sum)/total_reviews
    #     total

    # end

end