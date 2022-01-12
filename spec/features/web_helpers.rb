def sign_in_and_play
  visit("/")
  fill_in "Player One", with: "Orla"
  fill_in "Player Two", with: "Alex"
  click_button "Submit"
end

def attack_and_confirm
  click_button "Attack"
  click_button "Proceed"
end