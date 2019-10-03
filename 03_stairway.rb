def jet_de_dé 
    six_sided_die = 1 + rand(6)
    return six_sided_die
end

def analyze_result(six_sided_die)
    if six_sided_die == 5 || six_sided_die == 6
        puts "Vous êtes tombé sur #{six_sided_die}"
        puts "Vous montez une marche."
        return 1
    elsif six_sided_die == 1
        puts "Vous êtes tombé sur #{six_sided_die}"
        puts "Vous descendez une marche."
        return -1
    else
        puts "Vous êtes tombé sur #{six_sided_die}"
        puts "Vous restez sur la même marche."
        return 0
    end
end

def quelle_marche(num)
    puts "Vous êtes sur la marche #{num}/10"
    end

def win?(num)
    if num == 10
        return true 
    else
        return false
    end
end

def play
    puts "Bienvenur sur stairway !"
    step = 0
    quelle_marche(step)
    
    while(!win?(step)) do 
    step += analyze_result(jet_de_dé)
    quelle_marche(step)
    end
    puts "Bravo !"
end

def average_finish_time
    100.times do play
    end
end

average_finish_time

 
