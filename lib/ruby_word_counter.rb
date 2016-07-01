class String
  define_method(:ruby_word_counter) do |search,within|
    results_array = []
    words = within.split(" ")
    words.each() do |word|
      if word == search
        results_array.push(word)
      end
    end
    results_array.size()
  end
end
