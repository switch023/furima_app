FactoryBot.define do

  factory :send_information do
    send_first_name          {"abe"}
    send_family_name         {"hirosi"}
    send_first_name_kana     {"abe"}
    send_family_name_kana    {"hirosi"}
    post_code                {"1"}
    prefecture               {"大阪"}
    city                     {"大阪市"}
    address                  {"三先1-1-1"}
    building_name            {"ハイツ"}
    phone_number             {"0800000000"}
    user_id                  {"2"}
  end

end