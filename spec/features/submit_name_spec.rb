

feature 'Allowing two players to enter their names' do
  scenario "Displays player's names on screen after they have been entered" do
  sign_in_and_play
    expect(page).to have_text("Player 1: Majd")
  end
end
