feature 'showing hit points' do

  scenario 'shows player_2 Hit Points' do
    sign_in_and_play
    expect(page).to have_content "100HP"
  end
end
