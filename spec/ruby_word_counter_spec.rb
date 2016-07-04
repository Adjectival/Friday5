require('rspec')
require('ruby_word_counter')

  describe('String#ruby_word_counter') do
    it('checks to see how many times a word shows up in a string and displays it') do
      expect("now".ruby_word_counter('now I know no now')).to(eq(2))
    end
  end
