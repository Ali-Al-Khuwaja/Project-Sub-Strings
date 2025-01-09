dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substring(my_sentence,dictionary) 
  result = Hash.new(0)
  my_sentence = my_sentence.downcase.split(' ')
  my_sentence.each do |my_words|    # for each word in the my_sentence array
    dictionary.each do |current_dictionary_word|    # for each word in the dictionary array
      if my_words.include?(current_dictionary_word) then    # if the word has ... hmm do we even need to comment in Ruby ? maybe 
        result[current_dictionary_word] += 1
      end
    end
  end
  puts result.sort.to_h
end
substring("Howdy partner, sit down! How's it going?", dictionary)

# should be => { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }
