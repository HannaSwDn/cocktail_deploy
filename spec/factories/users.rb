FactoryBot.define do

  factory :user do
    email { "mail@mail.com" }
    password { "password" }
    role { "user" }
  end

end
