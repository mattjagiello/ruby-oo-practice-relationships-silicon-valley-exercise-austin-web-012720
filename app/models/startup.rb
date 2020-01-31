require 'pry'
class Startup
    attr_accessor :name, :domain, :rounds
    attr_reader :founder
    @@all = []

    def initialize(name, founder, domain)
        @name = name
        @founder = founder
        @domain = domain
        @domains = []
        @rounds = []
        @@all << self
    end

    def pivot(domain, name)
        @domain = domain
        @name = name

    end 

    def self.all
        @@all
    end 

    def self.domains
        @domains
    end 

    def sign_contract(vc, type, investment)
        round = FundingRound.new(self, vc, type, investment)
        @rounds << round
    end 

    def num_funding_rounds
        @rounds.size
    end 

    def total_funds
        total = 0
        @rounds.each do |round|
            total += round.investment 
        end
        total
    end 

    def investors
        investors = []
        @rounds.each do |round|
           investors << round.venture_capitalist
        end
        investors.uniq
    end

    def big_investors
        array = investors
        array.find_all do |investor|
            investor.total_worth > 1000000
        end
    end 

end
