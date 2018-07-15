class Raindrops
  def self.convert(number)
    result = WORDS.each_with_object('') do |(code, word), output|
      output.concat(word) if number % code == 0 
    end
    result.empty? ? number.to_s : result
  end

  WORDS = {
    3 => 'Pling',
    5 => 'Plang',
    7 => 'Plong'
  }
end
  
module BookKeeping
  VERSION = 3
end