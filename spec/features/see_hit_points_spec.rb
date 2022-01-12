feature "View hit point's" do
  scenario "Player 2 has 60 hit points at the beginning of the game" do
    sign_in_and_play
    expect(page).to have_content "Alex: 60HP"
  end

  scenario "Player 2 has 50 hit points after being attacked" do
    sign_in_and_play
    click_button "Attack"
    click_button "Proceed"
    expect(page).not_to have_content "Alex: 60HP"
    expect(page).to have_content "Alex: 50HP"
  end
end