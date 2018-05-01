require 'player'

describe Player do

subject(:player) {described_class.new(name)}
let(:name) { "Bob" }

  it "has a name" do
    expect(player.name).to eq name
  end
end
