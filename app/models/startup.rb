# frozen_string_literal: true

# Startup-< *FundingRound* >-VentureCapitalist

class Startup
  attr_reader :name, :founder, :domain

  @@all = []

  def initialize(name, founder, domain)
    @name = name
    @founder = founder
    @domain = domain

    @@all << self
  end

  def pivot(domain, name)
    @domain = domain
    @name = name
  end

  def self.all
    @@all
  end

  def self.find_by_founder(founder)
    all.find { |startup| startup.founder == founder }
  end

  def self.domains
    all.map(&:domain)
  end

  def sign_contract(venture_capitalist, type, investment)
    FundingRound.new(self, venture_capitalist, type, investment)
  end

  def num_funding_rounds
    self.funding_rounds.count
  end

  def total_funds
    total = 0
    self.funding_rounds.map do |funding_round|
      total += funding_round.investment
    end
    total
  end

  def funding_rounds
    FundingRound.all.select do |funding_round|
      funding_round.startup == self
    end
  end

  def investors
    self.funding_rounds.map do  |funding_round|
      funding_round.venture_capitalist
    end.uniq
  end

  def big_investors
    self.investors.select do |investor|
      investor.total_worth > 1_000_000_000
    end
  end

end
