# create spec source.

RSpec.describe Web::Controllers::Books::Create, type: :action do
  # Web::Controllers::Books::Create
  # mean described_class
  let(:action) { described_class.new }
  let(:params) { Hash[book: [ title: 'Confident Ruby', author: 'Avdi Grimm' ]] }
  let(:repository) { BookRepository.new }

  before do
    repository.clear
  end

  it 'creates a new book' do
    action.call(params)
    book = repository.last

    expect(book.id).to_not be_nil
  end


  it 'redirects the user to the books listing' do
    response = action.call(params)

    expect(response[0]).to eq(302) # HTTP redirect response code.
    expect(response[1]['Location']).to eq('/books')
  end
end
