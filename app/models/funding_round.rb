# Startup-< *FundingRound* >-VentureCapitalist

class FundingRound
  attr_reader :startup, :venture_capitalist, :type, :investment

  @@all = []

  def initialize(startup, venture_capitalist, type, investment)
    @startup = startup
    @venture_capitalist = venture_capitalist
    @type = type

    investment < 0 ? @investment = 0 : @investment = investment.to_f

    @@all << self
  end

  def self.all
    @@all
  end


end
