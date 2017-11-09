feature 'see player 2 hit points' do
  scenario "Displays player two hit point" do
    sign_in_and_play
    expect(page).to have_text("Peter 100 HP")
  end

  scenario "Changes HP by 10 when attacking" do
    sign_in_and_play
    click_button('ATTACK!')

    expect(page).to have_text("Peter 90 HP")
  end
end
