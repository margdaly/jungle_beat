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

    it 'knows things' do

      list = LinkedList.new
      list.append("doop")

      expect(list.head.next_node).to eq(nil)
      expect(list.head.data).to eq("doop")
    end

  
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

      expect(list.head.next_node).to be_instance_of(Node)
      expect(list.head.next_node.data).to eq("deep")
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

    it 'can list even longer!' do
      list = LinkedList.new
      list.append("doop")
      list.append("deep")
      list.append("dope")

      expect(list.to_string).to eq("doop deep dope")
    end
  end

  describe 'can insert and prepend' do
    it 'can prepend' do
      list = LinkedList.new
      list.append("plop")
      list.append("suu")
      list.prepend("dop")
      
      expect(list.head.data).to eq("dop")
      expect(list.to_string).to eq("dop plop suu")
      expect(list.count).to eq(3)
    end

    it 'can prepend multiple times' do
      list = LinkedList.new
      list.append("plop")
      list.append("suu")
      list.prepend("dop")
      list.prepend("deep")
    
      expect(list.head.data).to eq("deep")
      expect(list.to_string).to eq("deep dop plop suu")
      expect(list.count).to eq(4)
    end

    xit 'can insert' do
      list = LinkedList.new
      list.append("plop")
      list.append("suu")
      list.prepend("dop")
      list.insert(1, "woo")

      expect(list.insert(1, "woo")).to eq("woo")
      expect(list.to_string).to eq("dop woo plop suu")
    end
  end
end
