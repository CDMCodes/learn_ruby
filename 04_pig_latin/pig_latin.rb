#write your code here
def translate(sentence)
  wordarr = sentence.split()
  vowels = ["a","e","i","o","u"]
  wordarr.map do |word|
    word.downcase!
    if vowels.include?(word[0])
      word<<"ay"
    elsif
      uvwl = word.index('u')
      word = word << word[0..uvwl] << "ay"
      word.slice!(0..uvwl)
    else
      # word = word<<word[0]<<"ay"
      # word.slice!(0)
      consts = word.index(/[aeiou]/)-1
      word = word << word[0..consts] << "ay"
      word.slice!(0..consts)
    end
  end
  wordarr.join(" ")
end


puts translate("apple")
puts translate("string")
puts translate("quiet")
