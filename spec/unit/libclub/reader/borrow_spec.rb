require 'spec_helper'

describe Libclub::Reader, '#borrow' do
  let(:owner) { described_class.new('Hillary') }
  let(:user)  { described_class.new('Barack')  }
  let(:book)  { mock('Book', owner: owner) }

  before do
    owner.books_owned << book
    user.borrow(book)
  end

  it 'should make book unavailable for owner' do
    expect(owner.books_lent).to include(book)
  end

  it 'should add book to borrowed' do
    expect(user.books_borrowed).to include(book)
  end
end