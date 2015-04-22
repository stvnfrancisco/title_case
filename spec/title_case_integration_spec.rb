#it should capitalize the first letter of each word
require('cpaybara/rspec')
require('./app')
Capybara.app = Sinatra::Application

describe('the title case path', {:type => :feature}) do
  it('processes the user entry and returns it title cased') do
    visit('/')
    fill_in('title', :with => 'green eggs and ham')
    click_button('send')
    expect(page).to have_content('Green Eggs and Ham')
  end
end
