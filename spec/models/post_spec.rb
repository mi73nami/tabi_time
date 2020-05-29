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

    it "textが無い場合は登録できないこと" do
      post = build(:post, text: "")
      post.valid?
      expect(post.errors[:text]).to include("を入力してください")
    end

    it "user_idが無い場合は登録できないこと" do
      post = build(:post, user_id: "")
      post.valid?
      expect(post.errors[:user]).to include("を入力してください")
    end

    it "category_idが無い場合は登録できないこと" do
      post = build(:post, category_id: "")
      post.valid?
      expect(post.errors[:category]).to include("を入力してください")
    end
  
    it "place_idが無い場合は登録できないこと" do
      post = build(:post, place_id: "")
      post.valid?
      expect(post.errors[:place]).to include("を入力してください")
    end

  end
end