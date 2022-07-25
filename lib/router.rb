require 'controller'

class Router

  def initialize
    @controller = Controller.new #@controller stock une instance de la class Controller -> plus simple d'appeler la class pour la suite
  end

  def perform

    puts "*  BIENVENUE DANS THE GOSSIP PROJECT  *"
    
    while true #boucle infini
      puts "Que désirez-vous faire ?"
      puts
      puts "1) Créer un gossip"
      puts "2) Afficher les gossip"
      puts "3) Suprimer un gossip"
      puts "4) Quitter l'application"
      print "-> "
      action = gets.chomp.to_i
      case action
      when 1
        puts "Création d'un nouveau gossip"
        @controller.create_gossip
      when 2
        puts "Affichage des gossip"
        @controller.index_gossip
      when 3
        puts "Suppression d'un gossip"
        @controller.destroy_gossip
      when 4
        puts "A bientôt sur The Gossip Project !"
        break #casse la boucle infini quand l'utilisateur ferme l'app : choix 4
      else 
        puts "Ce choix n'éxiste pas !"
      end
    end
  end

end