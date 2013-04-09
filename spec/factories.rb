FactoryGirl.define do 
  factory :rocketeer do
    sequence(:email) {|n| "email@gmail#{n}.com"}
    password "gobbledygook1"
  end
end