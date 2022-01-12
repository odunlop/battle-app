require 'player.rb'

describe Player do
  subject(:orla) { Player.new("Orla") }
  subject(:alex) { Player.new("Alex")}

  describe "#name" do
    it "returns the player's name" do
      expect(orla.name).to eq "Orla"
    end
  end
  
  describe "#hitpoints" do
    it "returns the number of hit points" do
      expect(orla.hitpoints).to eq 60
    end
  end

  describe "#receive_damage" do
    it "lowers the user's HP by 10" do
      expect { orla.receive_damage }.to change { orla.hitpoints }.by(-10)
    end
  end
end