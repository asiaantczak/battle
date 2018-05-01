feature 'entering names' do

  scenario 'adds players names' do
    sign_in_and_play
    expect(page).to have_content('Joe vs Gordon')
  end
end
