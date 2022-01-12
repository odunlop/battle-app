feature "enter names" do
  scenario "Saves entered names and returns screen with new names" do
    sign_in_and_play
    
    expect(page).to have_content "Orla vs Alex"
  end
end