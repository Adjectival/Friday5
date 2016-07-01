require('rspec')
require('ruby_word_counter')

  describe('String#ruby_word_counter') do
    it('receives user input of a word and displays it') do
      expect("sesquipedalian".ruby_word_counter()).to(eq("sesquipedalian"))
    end
    it('returns how frequently "sesquipedalian" appears in string') do
      expect('no one ever says "sesquipedalian" aloud'.ruby_word_counter()).to(eq('1'))
    end
  end
