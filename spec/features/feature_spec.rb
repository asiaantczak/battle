feature 'Feature tests for Battle app' do

before do
  visit('/')
  fill_in('player_1', with: 'Joe')
  fill_in('player_2', with: 'Gordon')
  click_button "Play"
end
  scenario 'adds players names' do
    expect(page).to have_content('Joe vs Gordon')
  end

  scenario 'shows player_2 Hit Points' do
    expect(page).to have_content "100HP"
  end
end
