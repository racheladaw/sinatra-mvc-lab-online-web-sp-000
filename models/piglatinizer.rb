class PigLatinizer

  def piglatinize(string)
    arr = string.split(" ")
    arr.each do |word|
      i = 0
      word.each_char do |letter|
        if ["a", "e", "i", "o", "u"].include?(letter)
          break
        end
        i +=1
      end
    end_of_word = word.slice!(0, i)
    binding.pry
    end
  end 
end
