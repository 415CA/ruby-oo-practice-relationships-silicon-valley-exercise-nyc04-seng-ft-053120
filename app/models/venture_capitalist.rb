# Startup-< *FundingRound* >-VentureCapitalist

class VentureCapitalist

  attr_reader :name, :total_worth
  @@all = []
  def initialize(name, total_worth)
    @name = name
    @total_worth = total_worth
    @@all << self
  end

  def self.all
    @@all
  end

  def self.tres_commas_club
    all.select { |vc| vc.total_worth > 1_000_000_000 }
  end

  def offer_contract(startup, type, investment)
    FundingRound.new(startup, self, type, investment)
  end

  def funding_rounds
    FundingRound.all.select { |funding_round| funding_round.venture_capitalist == self }
  end

  def portfolio
    funding_rounds.uniq
  end
  
  def biggest_investment
    funding_rounds.max_by(&:investment)
  end
  
  def invested(domain)
    total = funding_rounds.reduce { |sum, number| sum + number.investment if number.domain == domain }
    total.investment
  end

end
