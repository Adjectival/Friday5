class String
  define_method(:ruby_word_counter) do |search|
    results_array = []
    words = self.split(" ")
    words.each() do |word|
      if word == search
        results_array.push(word)
      end
    end
    results_array.size()
  end
end
