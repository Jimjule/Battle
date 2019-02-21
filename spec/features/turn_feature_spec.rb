feature 'Switch turns between attacks' do
  scenario 'Turn switches to player 2 after player 1 has attacked' do
    sign_in_and_play
    click_button("Attack")
    click_button("Ouch")
    expect(page).to have_content "It is now Hoju's turn to attack"
  end
end