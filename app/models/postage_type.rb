class Postage_type < ActiveHash::Base
  self.data = [
    {id: 1, postagetype: 'レターパックライト'},{id: 2, postagetype: 'ネコポス'},
    {id: 3, postagetype: 'ゆうパケット'},{id: 4, postagetype: '日本郵便'},
    {id: 5, postagetype: 'ヤマト便'}
  ]
end