#write your code here
def echo(words)
  words
end

def shout(words)
  words.upcase
end

def repeat(words, num=2)
  result = words
  num = num-1
  num.times do
    result += " #{words}"
  end
  result
end

def start_of_word(word,num=1)
  word[0..num-1]
end

def first_word(words)
  words.split(' ')[0]
end

# def titleize(words)
#   skipwords = ["over", "the", "and"]
#   wordarr = words.split
#   #puts wordarr
#   #wordarr.join(" ")
#   arr2 = wordarr.map do |w|
#     if skipwords.include?(w)
#       w
#     else
#       w.capitalize
#     end
#   end
#     arr2[0].capitalize!
#     arr2[-1].capitalize!
#     arr2.join(" ")
#     arr2
#     puts arr2
# end

def titleize(s)
  words = s.split.map do |word|
    if %w(the and over).include?(word)
      word
    else
      word.capitalize
    end
  end
  words.first.capitalize!
  words.join(" ")
end

puts titleize("jaws")=="Jaws"
#titleize("Firstname lastname")
