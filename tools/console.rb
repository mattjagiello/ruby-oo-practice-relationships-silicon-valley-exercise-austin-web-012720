require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

new_startup = Startup.new("facebook", "Mark", "Tech")
new_vc = VentureCapitalist.new("Bill", 1000)
new_round = FundingRound.new(self, new_vc, 1000, "Bill")
funding = new_startup.sign_contract(new_vc, "tech", 1000)
num = new_startup.num_funding_rounds
funding2 = new_startup.sign_contract(new_vc, "tech", 1000)
num2 = new_startup.num_funding_rounds
big_vc = VentureCapitalist.new("Bezos", 2000000)

new_startup.sign_contract(big_vc, "tech", 1000)

offer = new_vc.offer_contract(new_startup, "tech", 5000)
offer2 = new_vc.offer_contract(new_startup, "tech", 1000)
offer3 = new_vc.offer_contract(new_startup, "tech", 10000)
rounds = new_vc.funding_rounds
port = new_vc.portfolio
dom = new_vc.invested("tech")
# biggest = new_vc.biggest_investment


binding.pry
0 #leave this here to ensure binding.pry isn't the last line