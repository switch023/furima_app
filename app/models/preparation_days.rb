class Preparation_days < ActiveHash::Base

  self.data = [{id: 1, preparationdays: '１〜２日で発送'},{id: 2, preparationdays: '２〜３日で配送'}
              ,{id: 3, preparationdays: '４〜７日で発送'}
  ]
  validates :preparation_days, presence: true

  include ActiveHash::Associations
  has_many :items
end