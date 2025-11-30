

# #substrings that takes a word as the first argument and 
# then an array of valid substrings (your dictionary) as the 
# second argument. It should return a hash listing each substring 
# (case insensitive) that was found in the original string and 
# how many times it was found.
# 
#
# Examples:
# dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
# substrings("below", dictionary)
# => { "below" => 1, "low" => 1 }
# 
#  substrings("Howdy partner, sit down! How's it going?", dictionary)
#  => { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }

def substrings(input, dictionary)
  # Break input into all substrings (lowcase) and create a hash
  input_words = input.downcase.split
  substrings_from_input = []

  input_words.each do |word|
    word_accumulator = ""
    word.split("").each do |char|
      if(char.ord.between?(97, 122))
        word_accumulator += char
        substrings_from_input << word_accumulator
      end
    end
  end

  # search for substrings in dictionary
  results = substrings_from_input.each_with_object(Hash.new(0)) do |substr, h|
    if dictionary.include?(substr)
      h[substr] += 1
    end
  end
end