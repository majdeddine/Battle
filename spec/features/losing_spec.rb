feature 'see player 2 lose' do
  scenario "Displays game over for player 2" do
    sign_in_and_play
    19.times {click_button ('ATTACK!')}
    expect(page).to have_text("Peter Game Over")
  end
end
