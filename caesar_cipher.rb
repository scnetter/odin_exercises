LOWER_CASE_BASE = 97
LOWER_CASE_MAX = 122
UPPER_CASE_BASE = 65
UPPER_CASE_MAX = 90

def caesar_cipher(str, shift)
  # Normalize the shift to the range 0..25 so large shifts or negatives work
  shift = shift % 26

  str.chars.map do |char|
    code = char.ord

    if code.between?(UPPER_CASE_BASE, UPPER_CASE_MAX)
      (((code - UPPER_CASE_BASE + shift) % 26) + UPPER_CASE_BASE).chr
    elsif code.between?(LOWER_CASE_BASE, LOWER_CASE_MAX)
      (((code - LOWER_CASE_BASE + shift) % 26) + LOWER_CASE_BASE).chr
    else
      char
    end
  end.join
end

# Example:
# puts caesar_cipher("What", 5) #=> "Bmfy"

# TODO: 
# Problems in current code
# Wrap Handling: The code only special-cases Z (90) and z (122). Letters near the end (e.g., y) will overflow to non-letter ASCII characters instead of wrapping.
# Letter Detection: It doesn't check whether a character is a letter; it applies shifts to any character except ASCII 32 (space). Punctuation and numbers will get shifted.
# Case Separation: The code doesn't treat uppercase and lowercase by their own ranges (A–Z vs a–z) — a correct wrap must use the appropriate base ('A' or 'a').
# Shift Normalization: No normalization for shifts greater than 26 or negative shifts; use shift % 26.
# Limited whitespace handling: Only space (32) is explicitly preserved; better to preserve any non-letter characters.