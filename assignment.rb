def caesar_cipher(text, shift)
  result = ""

  text.each_char do |char|
    if char.match?(/[a-zA-Z]/)  # Check if the character is a letter
      base = char.ord >= 'a'.ord ? 'a'.ord : 'A'.ord
      shifted_char = ((char.ord - base + shift) % 26 + base).chr
      result += shifted_char
    else
      result += char  # If it's not a letter, just add it as is
    end
  end

  result
end

# Test the function
puts caesar_cipher("What a string!", 5)
