feature 'attacking other players' do
  scenario 'Player2 attacks Player 1' do
    sign_in_and_play
    click_button('ATTACK MAJD!')

    expect(page).to have_text('Peter attacked Majd')
  end
end
