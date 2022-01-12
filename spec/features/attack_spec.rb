feature "attack opponent" do
  scenario "Player One attacks Player Two" do
    sign_in_and_play
    click_button "Attack"
    expect(page).to have_content "Orla attacked Alex"
  end
end