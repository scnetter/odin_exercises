# frozen_string_literal: true

LOWER_CASE_BASE = 97
LOWER_CASE_MAX = 122
UPPER_CASE_BASE = 65
UPPER_CASE_MAX = 90

def shift_code(code, shift)
  if code.between?(UPPER_CASE_BASE, UPPER_CASE_MAX)
    (((code - UPPER_CASE_BASE + shift) % 26) + UPPER_CASE_BASE)
  elsif code.between?(LOWER_CASE_BASE, LOWER_CASE_MAX)
    (((code - LOWER_CASE_BASE + shift) % 26) + LOWER_CASE_BASE)
  else
    code
  end
end

def caesar_cipher(str, shift)
  shift %= 26

  # Convert characters to their ASCII codes, shift and wrap, then convert back
  str.bytes.map { |code| shift_code(code, shift).chr }.join
end

# Example:
# puts caesar_cipher("What", 5) # => "Bmfy"
