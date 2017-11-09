
feature 'see player 2 hit points' do
  scenario "Displays player two hit point" do
    sign_in_and_play
    expect(page).to have_text("Peter 100 HP")
  end
end
