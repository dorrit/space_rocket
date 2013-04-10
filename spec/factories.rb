FactoryGirl.define do 
  factory :rocketeer do
    sequence(:email) {|n| "email@gmail#{n}.com"}
    password "gobbledygook1" 
    profile
  end

  factory :rocketeer_with_contact_detail, class: Rocketeer do
    sequence(:email) {|n| "email@gmail#{n}.com"}
    password "gobbledygook1"
    contact_detail
    profile
  end

  factory :profile do
    bio "I eat nails for breakfast."
    hobby "Hanging from helicopters with my bare teeth."
    work "Astronaut"
  end

  factory :contact_detail do
    first_name 'Sammy'
    last_name 'McTougherson'
    email 'something@astronaut.nasa.gov'
    phone '915-123-4567'
    apartment_number '15'
    rocketeer_id 45
  end
end