require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the ruby word counter path', {:type => :feature}) do
  it('receives user input on Check button click') do
    visit('/')
    fill_in('search', :with => 'sesquipedalian')
    click_button('Check')
    expect(page).to have_content('sesquipedalian')
  end
end
