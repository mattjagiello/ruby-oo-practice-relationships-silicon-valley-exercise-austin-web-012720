class FundingRound
     
    attr_accessor :type, :investment
    attr_reader :startup, :venture_capitalist
    @@all = []

    def initialize(startup, venture_capitalist, type, investment)
        @startup = startup
        @investment = investment
        @type = type
        @venture_capitalist = venture_capitalist
        @@all << self
    end 

    def self.all
        @@all
    end  

end
