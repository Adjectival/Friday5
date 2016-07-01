require('rspec')
require('ruby_word_counter')

  describe('String#ruby_word_counter') do
    it('receives user input of a word and displays it') do
      expect("sesquipedalian".ruby_word_counter()).to(eq('sesquipedalian'))
    end
  end
