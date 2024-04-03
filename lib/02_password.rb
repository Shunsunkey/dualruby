
def set_password
    puts "Définir mot de passe"
    print "> "
    password = gets.chomp
    return password
  end
  
  def authenticate(password)
    puts "entrer le mot de passe"
    print "> "
    attempt = gets.chomp
    return attempt == password
  end
  
  def access_secret_area
    puts "Bienvenue dans la chambre secrete"
    puts "Vous avez acces a une zone privée."
  end
  
 
  password = set_password
  
  
  loop do
    break if authenticate(password)
    puts "Mot de passe incorrect."
  end
  
  def perform
    set_password
    authenticate(password)
    access_secret_area
  end  

  access_secret_area