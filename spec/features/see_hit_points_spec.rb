feature "View hit point's" do
  scenario "Player 2 has 60 hit points at the beginning of the game" do
    visit("/")
    fill_in "Player One", with: "Orla"
    fill_in "Player Two", with: "Alex"
    click_button "Submit"

    expect(page).to have_content "Alex: 60HP"
  end
end