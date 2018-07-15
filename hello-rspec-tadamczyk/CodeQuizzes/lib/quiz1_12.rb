class String
  def alliteration?
    firstCharacter = self[0]
    words = split(' ')
    words.all? do |word|
      word.start_with? firstCharacter
    end
  end
end
