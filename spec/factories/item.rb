FactoryBot.define do
  factory :item do
    id                  {1}
    name                {"上着"}
    introduction        {"とても暖かい上着です"}
    category_id         {3}
    brand               {"ユニクロ"}
    item_condition_id   {2}
    postage_payer_id    {3}
    prefecture_code_id  {5}
    preparation_day_id  {1}
    postage_type_id     {3}
    price             {1000}
    buyer_id          {""}
    seller_id         {1}
  end
end