### ASSIGNMENT ###
#   Implement a method #substrings that takes a word as the first argument 
#   and then an array of valid substrings (your dictionary) as the second 
#   argument. It should return a hash listing each substring (case insensitive) 
#   that was found in the original string and how many times it was found.


dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(word, array)
    dictionary_hash = array.each_with_object({}) do |array_word, counts|
        times_found = word.scan(array_word).length
        counts[array_word] = times_found
    end

    p dictionary_hash
    dictionary_hash
end

substrings("Howdy partner, sit down! How's it going?", dictionary)