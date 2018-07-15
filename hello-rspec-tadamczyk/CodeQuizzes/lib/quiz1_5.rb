def start_with_c?(string)
  words = string.split(' ')
  words.all? do |word|
    word.start_with? 'c'
  end
end
