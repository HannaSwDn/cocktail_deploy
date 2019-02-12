Given('I visit the landing page') do
    visit root_path
end

Given("I click {string}") do |string|
    click_on string
end

Given("I fill in {string} with {string}") do |field, content|
    fill_in field, with: content
end

When("I select {string} from {string}") do |option, selection|
    select option, from: selection
end

Given("I am logged in as {string}") do |email|
    visit new_user_session_path
    fill_in 'Email', with: email
    fill_in 'Password', with: 'password'
    click_on 'Log in'
end