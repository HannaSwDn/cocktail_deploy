Given('the following user exists') do |table|
	table.hashes.each do |user|
		FactoryBot.create(:user, user)
	end
end
