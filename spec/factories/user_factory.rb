FactoryGirl.define do
    factory :user do
        name "User"
        email "user@example.com"
        password "1234"
        password_confirmation "1234"
    end
end