def ciphered(string, shift=6)

    # VARIABLE DEFINITIONS
    is_a_letter = /[A-Za-z]/
    alphabet = ("a".."z").to_a
    ciphered_string = ""
    caps = false
      
    string.each_char do |character|
        character == character.upcase ? caps = true : caps = false
    
        character.downcase!
    
        unless is_a_letter.match(character)
          ciphered_string += character
        else
          old_index = alphabet.find_index(character)
          new_index = (old_index + shift) % 26
    
          if caps == false
            ciphered_string += alphabet[new_index]
          else
            ciphered_string += alphabet[new_index].upcase
          end
        end

    end
    p ciphered_string # to print it
    ciphered_string # to return it
end
    
ciphered("! abc gHi 3 z", -2) # to do it