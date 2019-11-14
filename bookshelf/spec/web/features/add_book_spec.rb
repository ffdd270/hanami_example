require './spec/features_helper'

RSpec.describe 'Add a book' do
  after do
    BookRepository.new.clear
  end

  it 'can create a new book' do
    visit '/books/new'

    # 폼에 내용을 입력.
    within 'form#book-form' do
      fill_in 'Title', with: 'My Book'
      fill_in 'Author', with: 'Some author'

      click_button 'Create'
    end

    expect(page).to have_current_path('/books')
    expect(page).to have_content("My Book")
  end
end
