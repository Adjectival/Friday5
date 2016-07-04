class String
  define_method(:ruby_word_counter) do |search,within|
    counter=0
    words = within.split(" ")
    words.each() do |word|
      if word == search
        counter+=1
      end
    end
    counter
  end
end
