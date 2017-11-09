feature 'attacking other players' do
  scenario 'Player 1 attacks Player 2' do
    sign_in_and_play
    click_button('ATTACK MAJD!')

    expect(page).to have_text('Majd attacked Peter')
  end
end
