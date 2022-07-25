require 'gossip'
require 'view'
require 'pry'
class Controller

  def initialize
    @view = View.new
  end

  def create_gossip
    params =@view.create_gossip
    @gossip = Gossip.new(params[:author], params[:content])
    @gossip.save
  end

  def index_gossip
    @gossip = Gossip.all
    @view.index_gossip(@gossip)
  end

  def destroy_gossip
    all_gossip = index_gossip
    params = @view.destroy_gossip
    #binding.pry
    all_gossip.delete_at(params)
    @gossip = Gossip.new("delete","gossip")
    @gossip.destroy_gossip(all_gossip)
  end

end

