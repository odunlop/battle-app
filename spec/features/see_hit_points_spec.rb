feature "View hit points" do
  scenario "Player 2 has 60 hit points at the beginning of the game" do
    sign_in_and_play
    expect(page).to have_content "Alex: 60HP"
  end

  scenario "Player 1 has 60 hit points at the beginning of the game" do
    sign_in_and_play
    expect(page).to have_content "Orla: 60HP"
  end

  scenario "Player 2 has 50 hit points after being attacked" do
    sign_in_and_play
    attack_and_confirm
    expect(page).not_to have_content "Alex: 60HP"
    expect(page).to have_content "Alex: 50HP"
  end

  scenario "Player 1 has 50 hit points after being attacked" do
    sign_in_and_play
    attack_and_confirm
    attack_and_confirm
    expect(page).not_to have_content "Orla: 60HP"
    expect(page).to have_content "Orla: 50HP"
    expect(page).to have_content "Alex: 50HP"
  end
end