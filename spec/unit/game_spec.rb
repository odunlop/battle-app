require 'game'

describe Game do
  subject(:game) { described_class.new(player_one, player_two) }
  let(:player_one) { double :player }
  let(:player_two) { double :player }

  describe "#player_one" do
    it "retrieves player_one" do
      expect(game.player_one).to eq player_one
    end
  end

  describe "#player_two" do
    it "retreives player_two" do
      expect(game.player_two).to eq player_two
    end
  end

  describe "#attack" do
    it "lowers the HP of the opponent" do
      expect(player_two).to receive(:receive_damage)
      game.attack(player_two)
    end
  end

  describe "#current_turn" do
    it "starts on player one" do
      expect(game.current_turn).to eq player_one
    end
  end

  describe "#switch_turn" do
    it "switches the turn" do
      game.switch_turn
      expect(game.current_turn).to eq player_two
    end
  end
end