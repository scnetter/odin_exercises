LOWER_CASE_BASE = 97
LOWER_CASE_MAX = 122
UPPER_CASE_BASE = 65
UPPER_CASE_MAX = 90

def caesar_cipher(str, shift)
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
