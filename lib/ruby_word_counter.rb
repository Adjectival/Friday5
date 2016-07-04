class String
  define_method(:ruby_word_counter) do |find|
    counter=0
    words_to_search = self.split(" ")
    words_to_search.each() do |word|
      if find == word
        counter+=1
      end
    end
    counter
  end
end
