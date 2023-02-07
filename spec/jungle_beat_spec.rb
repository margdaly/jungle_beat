require 'rspec'
require './lib/jungle_beat'
require './lib/linked_list'
require './lib/node'

RSpec.describe JungleBeat do
  describe 'exists' do
    it 'can initialize with a linkedlist' do
      jb = JungleBeat.new

      expect(jb).to be_instance_of(JungleBeat)
      expect(jb.list).to be_instance_of(LinkedList)
      expect(jb.list.head).to be(nil)
    end
  end

  describe 'can append' do
    it 'can append more than one' do
      jb = JungleBeat.new
      jb.append("deep doo ditt")

      expect(jb.append("deep doo ditt")).to eq("deep doo ditt")
      expect(jb.list.head.data).to eq("deep")
      expect(jb.list.head.next_node.data).to eq("doo")
    end

    it 'can append three more' do
      jb = JungleBeat.new
      jb.append("deep doo ditt")
      jb.append("woo hoo shu")

      expect(jb.append("woo hoo shu")).to eq("woo hoo shu")
      expect(jb.count).to eq(6)
    end
  end
end