# spec/web/features/visit_home_spec.rb
require './spec/features_helper.rb'

RSpec.describe 'Visit home' do
  it 'is successful' do
     visit '/'
     expect(page).to have_content('Bookshelf')
  end
end