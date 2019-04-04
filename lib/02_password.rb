def sign_up
confirm_mdp = 1
mdp= 0
  until confirm_mdp == mdp
    puts "Choisissez un mot de passe"
    print "> "
    mdp = gets.chomp
    puts "Confirmez votre mot de passe"
    print "> "
    confirm_mdp=gets.chomp
    if mdp == confirm_mdp
      puts "Ton mdp a bien été enregistré"
      return mdp
    else
      puts"Tes deux mots de passe ne correspondent pas !"
      end
    end
end

def log_in (mdp)
  saisie = 0
  while mdp != saisie
    puts "Rentrez votre mot de passe"
    print "> "
    saisie = gets.chomp
    if mdp == saisie
      puts "Vous êtes bien connecté"
    else
      puts "Votre mot de passe est incorrect!"
    end
  end
end

def welcome_screen
  puts"Bienvenue dans ta zone secrète"
  puts "Tu as un nouveau message de ton ex, veux-tu le lire?(Oui/Non)"
  print "> "
  reponse = gets.chomp
  if reponse == "Oui" || reponse == "O" || reponse == "o"
    puts "Je t'aime encore, je veux tout reprendre à 0"
  else
    puts "Tu es déconnecté"
  end
end

def perform
  mdp = sign_up
  log_in (mdp)
  welcome_screen
end

perform
