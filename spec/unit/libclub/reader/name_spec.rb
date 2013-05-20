require 'spec_helper'

describe Libclub::Reader, '#name' do
  let(:instance)   { described_class.new('Barack') }
  let(:subject)    { instance.name }

  it 'should assign name' do
    expect(subject).to eql('Barack')
  end
end