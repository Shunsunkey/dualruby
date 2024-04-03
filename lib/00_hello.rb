# Définition de la méthode say_hello
def say_hello(first_name)
    puts "Bonjour, #{first_name} !"
  end
  
  # Définition de la méthode ask_first_name
  def ask_first_name
    print "Quel est votre prénom ? "
    first_name = gets.chomp
    return first_name
  end
  
  # Demander à l'utilisateur son prénom
  first_name = ask_first_name
  
  # Saluer l'utilisateur en utilisant son prénom
  say_hello(first_name)