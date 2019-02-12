Given('the following user exists') do |table|
	table.hashes.each do |user|
		FactoryBot.create(:user, user)
	end
end

Given('the following item exists') do |table|
	table.hashes.each do |item|
		FactoryBot.create(:item, item)
	end
end