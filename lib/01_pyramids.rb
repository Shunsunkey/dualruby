def wtf_pyramid
    puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ? (choisis un nombre impair)"
    print "> "
    height = gets.chomp.to_i
  
    if height.even?
      puts "Utilise Un nombre IMPAIR BORDEL !"
      return
    end
  
    puts "Voici la pyramide :"
  
    #partie haute losange
    (height / 2 + 1).times do |i|
      puts " " * (height / 2 - i) + "#" * (2 * i + 1)
    end
  
    #partie basse losange
    (height / 2).downto(0) do |i|
      puts " " * (height / 2 - i) + "#" * (2 * i + 1)
    end
  end
  
  wtf_pyramid