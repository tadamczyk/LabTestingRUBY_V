def vowels(string)
  string.split.select do |word|
    word.match (/[aeiou]/)
  end
end