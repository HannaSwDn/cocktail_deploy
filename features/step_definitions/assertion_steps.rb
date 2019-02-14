Then("I should see {string}") do |string|
    expect(page).to have_content string
end

Given('it is monday today') do
    today = 1
    expect(today).to eq 1
end