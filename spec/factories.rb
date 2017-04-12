FactoryGirl.define do
  factory :question do
    title "Qual o descobridor do brasil?"
    subject "História"
  end

  factory :user do
    email "teste@teste.com"
  end

  salt = BCrypt::Engine.generate_salt
  factory :auth_user, class: User do
    email "kayna@guarany.net"
    # password_salt salt
    # password_hash BCrypt::Engine.hash_secret "123", salt
    password "123"
  end
end
