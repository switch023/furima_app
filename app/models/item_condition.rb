class ItemCondition < ActiveHash::Base
  self.data = [
    {id: 1,itemcondition: '新品/未使用'},{id: 2,itemcondition: '未使用に近い'},
    {id: 3,itemcondition: '目立った傷や汚れなし'},{id: 4,itemcondition: 'やや傷や汚れあり'},
    {id: 5,itemcondition: '傷や汚れあり'},{id: 6,itemcondition: '全体的に状態が悪い'},
  ]
  include ActiveHash::Associations
  has_many :items
end