class VentureCapitalist
    attr_accessor :name, :total_worth, :investment_rounds

    @@all = []

    def initialize(name, total_worth)
        @name = name
        @total_worth = total_worth
        @venture_capitalists = []
        @investment_rounds = []
        @@all << self
    end 

    def self.all 
        @@all
    end 

    def self.tres_commas_club
        VentureCapitalist.all.find_all do |x|
            x.total_worth > 1000000
        end 
    end 

    def offer_contract(st, type, investment)
        offer = FundingRound.new(st, self, type, investment)
        @investment_rounds << offer
    end 

    def funding_rounds
        @investment_rounds
    end 

    def portfolio
        rounds = []
        @investment_rounds.each do |round|
            rounds << round.startup.name
        end
        rounds.uniq
    end 

    def biggest_investment
        @investment_rounds.max_by do |round|
            round.investment
        end
        
    end

    def invested(string)
        total = 0
       array = @investment_rounds.select do |round|
            round.type == string
       end
       array.each do |round|
        total += round.investment
       end
       total
    end 
    
end
