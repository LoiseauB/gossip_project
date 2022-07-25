class Gossip
  attr_reader :author, :content

  def initialize(author, content)
    @content = content
    @author  = author
  end

  def save
    require 'csv'
    gossip_list = CSV.open("db/gossip.csv","a") do |gossip|
      gossip << [@author, @content]
    end
  end

  def self.all
    all_gossip = []
    CSV.foreach("db/gossip.csv") do |ligne|
      gossip_provisoire = Gossip.new(ligne[0],ligne[1])
      all_gossip << gossip_provisoire
    end
    return all_gossip
  end

  def destroy_gossip(all_gossip)
    require 'csv'
    gossip_list = CSV.open("db/gossip.csv","w") do |gossip|
      all_gossip.each do |potin|
        gossip << [potin.author, potin.content]
      end
    end
  end
end