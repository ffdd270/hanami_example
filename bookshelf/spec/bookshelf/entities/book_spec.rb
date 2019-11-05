RSpec.describe Book do
  it 'can be initialized with attributes' do
    test = Book.new :title => 'Refactoring'
    #repo = BookRepository.new

    #test = repo.create(title: 'Refactoring')
    expect(test.title).to eq('Refactoring')
  end
end