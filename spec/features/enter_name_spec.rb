feature "enter names" do
  scenario "Saves entered names and returns screen with new names" do
    visit("/")
    fill_in "Player One", with: "Orla"
    fill_in "Player Two", with: "Alex"
    click_button "Submit"

    expect(page).to have_content "Orla vs Alex"
  end
end