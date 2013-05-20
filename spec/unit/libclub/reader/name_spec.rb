require 'spec_helper'

describe Libclub::Reader, '#name' do
  let(:instance)   { described_class.new(name) }
  let(:subject)    { instance.name }

  context 'when name is string' do
    let(:name) { 'Barack' }

    it 'should assign name' do
      expect(subject).to eql('Barack')
    end
  end

  context 'when name is symbol' do
    let(:name) { :Barack }

    it 'should assign name' do
      expect(subject).to eql('Barack')
    end
  end
end