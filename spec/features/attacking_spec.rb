feature 'attacking other players' do
  scenario 'Player2 attacks Player 1' do
    sign_in_and_play
    click_button('ATTACK!')

    expect(page).to have_text('Majd attacks!')
  end
end
