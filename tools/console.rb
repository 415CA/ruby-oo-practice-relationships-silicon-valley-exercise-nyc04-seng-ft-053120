require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

# Startup.new(name, founder, domain)
s1 = Startup.new('Twitter', 'Jack', 'twitter.com')
s2 = Startup.new('ESPN', 'Adesina', 'espn.com')
s3 = Startup.new('Google', 'Sergi', 'google.com')
s4 = Startup.new('Facebook', 'Mark', 'facebook.com')
s5 = Startup.new('Apple', 'Steve', 'apple.com')

#  VentureCapitalist.new(name, total_worth)
v1 = VentureCapitalist.new('Dan', 2_000_000_000)
v2 = VentureCapitalist.new('Warren', 100_000_000_000_000)
v3 = VentureCapitalist.new('Mark', 4_000_000_000)
v4 = VentureCapitalist.new('Taylor', 3_500_000)
v5 = VentureCapitalist.new('Rocco', 999_999)
v6 = VentureCapitalist.new('Caitlin', 30_500)
v7 = VentureCapitalist.new('Pones', 50_700)
v8 = VentureCapitalist.new('Lebron', 1_500)

f1 = FundingRound.new(s1, v1, 'seed', 500_000)
f2 = FundingRound.new(s1, v2, 'seed', 90_000)
f3 = FundingRound.new(s1, v3, 'seed', 0)
f4 = FundingRound.new(s2, v3, 'seed', 1000_000)
f4 = FundingRound.new(s3, v3, 'seed', 1000_000)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line