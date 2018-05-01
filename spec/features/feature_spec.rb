feature 'Feature tests for Battle app' do

  scenario 'adds players names' do
    visit('/')
    fill_in('player_1', with: 'Joe')
    fill_in('player_2', with: 'Gordon')
    click_button "Play"
    expect(page).to have_content('Joe vs Gordon')
  end
end
