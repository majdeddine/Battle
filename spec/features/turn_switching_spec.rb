describe 'turn switching' do
  before(:each) { sign_in_and_play } 

  scenario 'starts with player 1\'s turn' do
    expect(page).to have_text("Majd's turn")
  end

  scenario 'starts with player 2\'s turn' do
    click_button('ATTACK!')
    expect(page).to have_text("Peter's turn")
  end
end

