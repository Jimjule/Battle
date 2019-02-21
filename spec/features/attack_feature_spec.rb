feature 'attack player 2' do
  scenario 'Player 2 is attacked and confirmation is displayed' do
    sign_in_and_play
    click_button("Attack")
    expect(page).to have_content 'Hoju was attacked!!!'
  end
end