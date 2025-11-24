def caesar_cipher(str, shift)
  # A = 65, Z, 90, a = 97, z = 122, <space> = 32
  
  # get the current ASCII value of the characters in the string
  original_ascii = str.split("").map { |char| char.ord }
  p original_ascii
end

caesar_cipher("test", 3)