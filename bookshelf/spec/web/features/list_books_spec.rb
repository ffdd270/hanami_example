require './spec/features_helper.rb'

RSpec.describe  'List Books'  do
  it 'displays each book on the page' do
    visit '/books'

    within '#books' do
      expect(page).to have_css('.book', count: 2)
    end
  end
end