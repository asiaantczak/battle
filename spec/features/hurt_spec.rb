feature 'Attacks reduce HP' do

  scenario 'Player 1 attacks Player 2 and reduces HP' do
    sign_in_and_play
    click_button('attack')
    expect(page).to have_content "90HP"
  end
end
