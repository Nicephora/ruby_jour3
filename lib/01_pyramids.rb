
def half_pyramid
  puts "Salut, bienvenue dans ma super pyramide (half_pyramid). Je te construis combien d'étages ?"
  print "> "
  etage = gets.chomp.to_i
  n = 0
  ligne = 1
  espace = " "
  while n < etage do
    puts  (espace * (etage - (n + 1))) + ("#" * ligne)
    ligne += 1
    n += 1
  end
end

def full_pyramid
  puts "Salut, bienvenue dans ma super pyramide (full_pyramid). Je te construis combien d'étages ?"
  print "> "
  etage = gets.chomp.to_i
  n = 0
  ligne = 1
  espace = " "
  while n < etage do
    if ligne <= 1
      puts  (espace * (etage - (n + 1))) + ("#" * ligne)
    else
      puts  (espace * (etage - (n + 1))) + ("#" * ligne) + ("#" * (ligne-1))
    end
    ligne += 1
    n += 1
  end
end

def wtf_pyramid
  puts "Salut, bienvenue dans ma super pyramide (wtf_pyramid)! Je te construis combien d'étages ?"
  print"> "
  floors=gets.chomp
  floors=floors.to_i
  if(floors.even?) #Dans les bonus de l'énoncé c'était écris "envoyer booler l'utilisateurs pour les nombres pair", j'ai mis une condition pour empecher d'entrer un nombre pair
    puts "Désolé je ne cherche pas les embrouilles avec les nombres pairs (c'est trop dangereux pour moi)"
  else
    n = 0

    while n <= floors/2
      print (" " *((floors/2-n)))
      puts ("#" * ((2 * n)+1))
      n += 1
    end
    n-=2
    while n >= 0
      print (" " *((floors/2-n)))
      puts ("#" * ((2 * n)+1))
      n -= 1
    end
  end
end

def perform
  half_pyramid
  full_pyramid
  wtf_pyramid
end

perform