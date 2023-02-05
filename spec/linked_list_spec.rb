require 'rspec'
require './lib/linked_list'
require './lib/node'

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
    it 'can add data' do

      list = LinkedList.new
      list.append("doop")

      expect(list.head).to be_instance_of(Node)
    end
  end

  describe 'knows things' do
    it 'knows self' do

      list = LinkedList.new
      list.append("doop")

      expect(list.head.next_node).to eq(nil)
      expect(list.head.data).to eq("doop")
    end
  end

  describe 'can do things' do
    it 'can count' do

      list = LinkedList.new
      list.append("doop")

      expect(list.count).to eq (1)
      expect(list.head.data).to eq("doop")
    end

    it 'can list' do

      list = LinkedList.new
      list.append("doop")
      
      expect(list.to_string).to eq ("doop")
    end
  end

  describe 'can do more' do
    it 'can add a link' do

      list = LinkedList.new
      list.append("doop")
      list.append("deep")

      expect(list.current_node).to be_instance_of(Node)
      expect(list.head.data).to eq("doop")
      expect(list.head.next_node).to eq(list.current_node)
    end

    it 'can count higher' do
      list = LinkedList.new
      list.append("doop")
      list.append("deep")

      expect(list.count).to eq(2)
    end

    it 'can list a longer string' do
      list = LinkedList.new
      list.append("doop")
      list.append("deep")

      expect(list.to_string).to eq("doop deep")
    end
  end
end
