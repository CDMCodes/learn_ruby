class Book
# write your code here

  def title=(new_title)
    if new_title == nil
      @title = nil
    else
      words = new_title.split
      # puts words
      articles = ["the","and","a","an","of","in","on"]
      words = words.map do |word|
        if articles.include?(word)
          word = word.downcase
        elsif word == "i"
          word.capitalize!
        else
          word = word.capitalize
        end
      end
      # puts words[0]
      words[0] = words[0].capitalize
      # @title = new_title.capitalize!
      @title = words.join(" ")
    end
  end

  # attr_accessor :title
  attr_reader :title

end

# shorttest = Book.new
# shorttest.title = "bookname"
# puts shorttest.title
longtest = Book.new
longtest.title = "a long title"
puts longtest.title
