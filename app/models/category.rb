class Category < ActiveHash::Base
  self.data = [
      {id: 1, name: '観光スポット'}, {id: 2, name: 'レストラン・カフェ'}, {id: 3, name: 'ホテル'},
      {id: 4, name: 'ショップ'}, {id: 5, name: 'お土産'}, {id: 6, name: 'その他'},
  ]
end