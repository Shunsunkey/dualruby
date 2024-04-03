#Définition de la méthode pour jouer une partie
def play_game
    steps = 0
    while steps < 10
        dice_roll = rand(1..6)
        if dice_roll == 5 || dice_roll == 6
            steps += 1
            puts "Bravo ! Vous avez gravi une marche !!"
        elsif dice_roll == 1
            if steps > 0
                steps -= 1
                puts "Fallait pas faire 1, vous descendez d'une case"
            else puts "Vous êtes déjà au plus bas !"
            end
        else
            puts "Rien ne se passe. Vous stagnez à votre marche actuelle."
        end
    end
    puts "Félication ! Vous avez réussi à gravir 10 marches !"
end

#Définition de la méthode pour calculer le nombre moyen de tours pour atteindre la 10ème marche !
def average_finish_time(num_games)
    total_turns = 0
    num_games.times do
        steps = 0
        turns = 0
        while steps < 10
            dice_roll = rand(1..6)
            if dice_roll == 5 || dice_roll == 6
                steps += 1
            end
            turns += 1
        end
        total_turns += turns
    end
    average_turns = total_turns.to_f / num_games
    return average_turns
end
#jouer la partie
play_game

#calcul du nombre moyen de tour pour atteindre la 10ème marche sur au moins 100 parties
puts "Le nombre moyen de tours pour atteindre la 10ème marche sur 100 parties est : #{average_finish_time(100)}"