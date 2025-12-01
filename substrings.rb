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

  # replace non-alpha values with " " to avoid isshes with contractions and 
  # other punctuation
  clean_words = input.downcase.gsub(/[^a-z]/, ' ')
 
  # Use the dictionary and regex instead of building a hash of individual substrings 
  # from the input
  
  dictionary.each_with_object(Hash.new(0)) do |word, counts|
    lowercase_word = word.downcase
    pattern = Regexp.escape(lowercase_word)
    count = clean_words.scan(/(?=#{pattern})/).length
    counts[lowercase_word] = count if count > 0
  end
end