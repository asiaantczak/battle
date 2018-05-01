feature 'Feature tests for Battle app' do

  scenario 'creates a testing infrastructure' do
    visit('/')
    expect(page).to have_content('Testing infrastructure working!')
  end

end
