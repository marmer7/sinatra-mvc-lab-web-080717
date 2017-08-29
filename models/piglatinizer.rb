class  PigLatinizer
  attr_reader :text


  def piglatinize(word)
    vowels = ["a","e","i","o","u"]
    if word.size == 1
      word+"way"
    elsif vowels.include?(word[0].downcase)
      word+"way"
    else
      word_split = word.split(/([aeiou].*)/)
      word_split.push(word_split.shift).join("")+"ay"
    end
  end

  def to_pig_latin(text)
    text.split(" ").map { |word|  piglatinize(word)}.join(" ")
  end
end
