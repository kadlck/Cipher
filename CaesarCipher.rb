def caesar_cipher(string, number)
  string.split("").each {|letter| letter.replace(getNewLetter(letter, number))}
end

def getIndex (letter)
  ("a".."z").to_a.each_with_index {|letter_of_abc, index_of_abc| return index_of_abc if letter.downcase == letter_of_abc}
end

def getShift(index, number)
  sum = index+number
  if sum < 26
    return ("a".."z").to_a[sum]
  else
    return ("a".."z").to_a[(-26+index+number)]
  end
end

def getNewLetter(letter, number)
  if ("a".."z").to_a.include?(letter) && letter.downcase
    index = getIndex(letter)
    new = getShift(index, number)
    return new
  elsif ("A".."Z").to_a.include?(letter) && letter.upcase
    index = getIndex(letter)
    new = getShift(index, number)
    return new.upcase
  else
    return letter
  end
end

input_string = "What a string!"
input_number = 5

print(caesar_cipher(input_string, input_number).join)
