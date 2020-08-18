class Postage_type < ActiveHash::Base
  self.data = [
    {id: 1, name: 'レターパックライト'},{id: 2, name: 'ネコポス'},
    {id: 3, name: 'ゆうパケット'},{id: 4, name: '日本郵便'},
    {id: 5, name: 'ヤマト便'}
  ]
end