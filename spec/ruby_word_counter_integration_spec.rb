require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the ruby word counter path', {:type => :feature}) do
  it('receives user input on Check button click and displays result of Word Counter method') do
    visit('/')
    fill_in('find', :with => "do")
    fill_in('within', :with => 'how do you do')
    click_button('Check')
    expect(page).to have_content('2 times')
  end
end
