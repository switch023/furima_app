class PreparationDay < ActiveHash::Base

  self.data = [{id: 1, preparationday: '１〜２日で発送'},{id: 2, preparationday: '２〜３日で配送'},
               {id: 3, preparationday: '４〜７日で発送'}
  ]
  # validates :preparation_day, presence: true

  include ActiveHash::Associations
  has_many :items
end