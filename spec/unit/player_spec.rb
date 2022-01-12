require 'player.rb'

describe Player do
  subject(:orla) { Player.new("Orla") }

  describe "#name" do
    it "returns the player's name" do
      expect(orla.name).to eq "Orla"
    end
  end
end