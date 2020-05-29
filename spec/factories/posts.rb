FactoryBot.define do

  factory :post do
    title       {"エッフェル塔"}
    text        {"パリに行ってきました！生のエッフェル塔すごかった！"}
    image       {File.open("#{Rails.root}/public/images/test_image.jpg")}
    money       {"無料"}
    address     {"Champ de Mars, 5 Avenue Anatole France, 75007 Paris, フランス"}
    created_at  {"2020-01-01"}
    updated_at  {"2020-01-01"}
    user_id     {1}
    category_id {1}
    place_id    {603}
  end

end