require 'rails_helper'
describe Post do
  describe '#create' do

    it "titleが無い場合は登録できないこと" do
      post = build(:post, title: "")
      post.valid?
      expect(post.errors[:title]).to include("を入力してください")
    end

    it "imageが無い場合は登録できないこと" do
      post = build(:post, image: "")
      post.valid?
      expect(post.errors[:image]).to include("を入力してください")
    end
  
  end
end