def play
stair = 0
count = 0
until stair > 10
nb = rand(6)+1
  if (nb == 5 || nb == 6)
  stair += 1
  puts "Tu as tiré le #{nb}, tu avances d'une marche. Tu es à la marche #{stair}"
elsif (nb == 1) && (stair > 0)
  puts "Tu as tiré le #{nb}, tu recules d'une marche. Tu es à la marche #{stair}"
  stair -= 1
  else
  puts " Tu as tiré le #{nb}, tu ne bouge pas. Tu es à la marche #{stair}"
  end
  count += 1
 end
puts "Vous avez gagné en #{count} de coup"
return count
end

def average_finish_time
  stat = 0
  100.times do
  stat += play
  end
  moyenne = stat / 100
  puts "Sur 100 parties la moyenne de coup pour gagner est de #{moyenne} coups"
end

average_finish_time
