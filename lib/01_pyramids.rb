
=begin
def half_pyramid
puts "Salut, bienvenu dans ma super pyramide. Je te construis combien d'étages ?"
print ">"
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
half_pyramid
=end

=begin
def full_pyramid
  puts "Salut, bienvenu dans ma super pyramide. Je te construis combien d'étages ?"
  print ">"
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
=end

def wtf_pyramid
  puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
  print">"
  floors=gets.chomp
  floors=floors.to_i

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

wtf_pyramid
