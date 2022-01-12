def sign_in_and_play
  visit("/")
  fill_in "Player One", with: "Orla"
  fill_in "Player Two", with: "Alex"
  click_button "Submit"
end