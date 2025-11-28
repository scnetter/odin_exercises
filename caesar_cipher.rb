require "pry"
require "pry-byebug"

LOWER_CASE_BASE = 97
LOWER_CASE_MAX = 122
UPPER_CASE_BASE = 65
UPPER_CASE_MAX = 90

def caesar_cipher(str, shift)
  # A = 65, Z = 90, a = 97, z = 122, <space> = 32
  
  # get the current ASCII value of the characters in the string
  original_ascii = str.split("").map { |char| char.ord }
  
  shifted_chars = original_ascii.map do |code|
  
    # Still not working fully. Need to account for shifts where it wraps (i.e. "W" with a shift of 5)
    # Will be 92 after current calculation. Needs to be 66. 
    if code.between?(UPPER_CASE_BASE,UPPER_CASE_MAX)
      # binding.pry
      (code - UPPER_CASE_BASE + shift + UPPER_CASE_BASE)
    elsif code.between?(LOWER_CASE_BASE,LOWER_CASE_MAX)
      (code - LOWER_CASE_BASE + shift + LOWER_CASE_BASE).chr
    else
      code.chr
    end
  end.join("")
end

puts caesar_cipher("What", 5)

# TODO: 
# Problems in current code
# Wrap Handling: The code only special-cases Z (90) and z (122). Letters near the end (e.g., y) will overflow to non-letter ASCII characters instead of wrapping.
# Letter Detection: It doesn't check whether a character is a letter; it applies shifts to any character except ASCII 32 (space). Punctuation and numbers will get shifted.
# Case Separation: The code doesn't treat uppercase and lowercase by their own ranges (A–Z vs a–z) — a correct wrap must use the appropriate base ('A' or 'a').
# Shift Normalization: No normalization for shifts greater than 26 or negative shifts; use shift % 26.
# Limited whitespace handling: Only space (32) is explicitly preserved; better to preserve any non-letter characters.