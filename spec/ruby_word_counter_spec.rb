require('rspec')
require('ruby_word_counter')

  describe('String#ruby_word_counter') do
    it('checks to see how many times a word shows up in a string and displays it') do
      expect('how do you do'.ruby_word_counter("do")).to(eq(2))
    end
  end
