feature "View hit point's" do
  scenario "Player 2 has 60 hit points at the beginning of the game" do
    sign_in_and_play

    expect(page).to have_content "Alex: 60HP"
  end
end