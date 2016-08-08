# séparer tous les mots
# on sépare chaque lettre de chaque mot => split
# créer un tableau de réfrence <=> l'alphabet => range
# trouver l'index d'une lettre à encrypter dans le tableau alphabet => index
# change l'index en lui otant 3
# on cherche la lettre correspondant au nouvel index dans l'alphabet => array [index]
# on rassemble les lettres puis les mots => join
#
sentence = "WELCOME TO THE LIVECODE"
def encrypt(sentence)
  letters = sentence.split("")
  alphabet = ("A".."Z").to_a
  letters_index =letters.map do  |letter|
    if alphabet.index(letter)
    alphabet.index(letter)
  else " "
    end
  end
  return letters_index
end

p encrypt(sentence)
