class PigLatinizer

  def piglatinize(string)
    string.downcase!
    arr = string.split(" ")
    arr.map do |word|
      i = 0
      word.each_char do |letter|
        if ["a", "e", "i", "o", "u"].include?(letter)
          break
        end
        i +=1
      end
    if word.length > 1
      end_of_word = word.slice!(0, i)
    #binding.pry
      word << end_of_word
    #binding.pry
      if ["a", "e", "i", "o", "u"].include?(end_of_word[0])
        word << "way"
      else
        word << "ay"
      end
    else
      word << "way"
    end
  end.join(" ")
  end
end
