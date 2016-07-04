require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the ruby word counter path', {:type => :feature}) do
  it('receives user input on Check button click and displays result of Word Counter method') do
    visit('/')
    fill_in('search', :with => "now")
    fill_in('within', :with => 'now I know no now')
    click_button('Check')
    expect(page).to have_content('2 times')
  end
end
