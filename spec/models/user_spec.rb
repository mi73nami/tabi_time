require 'rails_helper'
describe User do
  describe '#create' do

    it "nicknameがない場合は登録できないこと" do
      user = build(:user, nickname: "")
      user.valid?
      expect(user.errors[:nickname]).to include("が入力されていません。")
    end

  end
end