feature 'attack player 2' do

  scenario 'attack and get confirmation' do
    sign_in_and_play
    click_button('attack')
    expect(page).to have_content("Good shot!")
  end
end
