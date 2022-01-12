feature "attack opponent" do
  scenario "Player One attacks Player Two" do
    sign_in_and_play
    click_button "Attack"
    expect(page).to have_content "Orla attacked Alex"
  end

  scenario "Player Two attacks Player One" do
    sign_in_and_play
    attack_and_confirm
    click_button "Attack"
    expect(page).to have_content "Alex attacked Orla"
  end
end