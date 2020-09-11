FactoryBot.define do

  factory :user do
    nickname              {"abe"}
    email                 {"kkk@gmail.com"}
    password              {"0000000"}
    password_confirmation {"0000000"}
    first_name              {"abe"}
    family_name              {"abe"}
    first_name_kana              {"abe"}
    family_name_kana              {"abe"}
    birthday              {"0000-00-00"}
  end

end