class PigLatinizer

  def piglatinize(string)
    arr = string.split(" ")
    arr.map do |word|
      i = 0
      word.each_char do |letter|
        if ["a", "e", "i", "o", "u"].include?(letter)
          break
        end
        i +=1
      end
    end_of_word = word.slice!(0, i)
    #binding.pry
    word << end_of_word << "ay"
  end.join(" ")
  end
end
