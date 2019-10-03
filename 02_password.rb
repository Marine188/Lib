def sign_up 
  puts "Veuillez définir un mot de passe"
  print "> "
  pin = gets.chomp
end

def login(pin)
  puts "Saisissez votre mot de passe"
  mdp = gets.chomp 
  while mdp != pin
    puts "Erreur. Veuillez resaisir votre mot de passe"
    mdp = gets.chomp
end
end

def welcome_screen
 puts "Welcome into your secret interface"
    end

def perform
    pin = sign_up
    login(pin)
    welcome_screen
end

perform