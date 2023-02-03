require 'rspec'
require './lib/linked_list'

RSpec.describe LinkedList do
  describe 'exists' do
    it 'is an instance of LinkedList' do

      list = LinkedList.new

      expect(list).to be_instance_of(LinkedList)
    end

    it 'has a head' do

      list = LinkedList.new

      expect(list.head).to eq(nil)
    end
  end

  describe 'can do things' do
    xit 'can add data' do

      list = LinkedList.new

      expect(list.append("doop")).to eq ("doop")
    end
  end

  describe 'knows things' do
    xit 'knows self' do

      list = LinkedList.new
      list.append("doop")

      expect(list.head.next_node).to eq(nil)
    end
  end

  describe 'can do things' do
    xit 'can count' do

      list = LinkedList.new
      list.append("doop")

      expect(list.count).to eq (1)
    end

    xit 'can list' do

      list = LinkedList.new
      list.append("doop")

      expect(list.to_string).to eq ("doop")
    end
  end
end
