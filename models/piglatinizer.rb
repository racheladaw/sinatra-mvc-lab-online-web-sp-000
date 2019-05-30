class PigLatinizer

  def piglatinize(string)
    arr = string.split(" ")
    arr.each do |word|
      i = 0
      word.each do |letter|
        if ["a", "e", "i", "o", "u"].include?(letter)
          binding.pry
        end
      end
    end 
  end

end
