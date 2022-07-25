class View

  def create_gossip
    puts "Quel est ton pseudo ? 🥸"
    print "-> "
    author = gets.chomp
    puts "Quel est ton gossip ? 🤫"
    print "-> "
    content = gets.chomp
    return params = {content: content, author: author}
  end

  def index_gossip(gossip)
    i=0
     gossip.each do |potin|
      puts "#{i}) #{potin.content}\nby #{potin.author}\n "
      i += 1
    end
  end

  def destroy_gossip
    puts "Quel gossip veux-tu supprimer ?"
    print "-> "
    params = gets.chomp.to_i
    return params
  end
    

end