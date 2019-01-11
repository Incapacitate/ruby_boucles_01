def say_hello
  puts "Bonjour ! Une petite partie ?"

end

def jeu
  finalStep = 10 #variable de la marche finale
  step = 1 #variable du niveau minimum
  tourNb = 1 #variable du nombre de tour

  while step < finalStep # tant que step n'est pas à 10 on reproduit
    puts "> Tour #{tourNb} "

    diceValue = rand(1..6) #variable du lancé de dé par un nombre random
    puts "Lancement de dé : #{diceValue}"

    if diceValue > 4 #premiere condition pour 5 et 6
      step += 1
      puts "Tu avances d'une case ! (#{step})"
    elsif diceValue == 1 && step > 1 #deuxième comdition pour 1
      step -= 1
      puts "Tu recules d'une case ! (#{step})"
    else #le reste donc 2, 3, 4
      puts "Tu ne bouges d'aucune case ! (#{step})"
    end
    tourNb += 1
  end

  tourNb -= 1 
  puts "Et voilà ! Tu as réussi à monter ces #{finalStep} marches en #{tourNb} tours ! On recommence quand tu veux. Avec plus ou moins de tours selon ta chance au dé !"
end

def perform
  say_hello
  jeu
end

perform