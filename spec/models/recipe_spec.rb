require 'rails_helper'

describe Recipe, type: :model do

  before do
    @recipe = FactoryBot.build(:recipe)
  end

  describe 'レシピの新規投稿' do
    context '新規投稿がうまくいくとき' do
      it "name, material, howto1-3が存在すれば投稿できる" do
        expect(@recipe).to be_valid
      end
    end

    context '新規投稿に失敗する時' do
      it "nameが無いと登録できない" do
        @recipe.name = ""
        @recipe.valid?
        expect(@recipe.errors.full_messages).to include("Name can't be blank")
      end

      it "materialが無いと登録できない" do
        @recipe.material = ""
        @recipe.valid?
        expect(@recipe.errors.full_messages).to include("Material can't be blank")
      end

      it "howto1が無いと登録できない" do
        @recipe.howto1 = ""
        @recipe.valid?
        expect(@recipe.errors.full_messages).to include("Howto1 can't be blank")
      end

      it "howto2が無いと登録できない" do
        @recipe.howto2 = ""
        @recipe.valid?
        expect(@recipe.errors.full_messages).to include("Howto2 can't be blank")
      end

      it "howto3が無いと登録できない" do
        @recipe.howto3 = ""
        @recipe.valid?
        expect(@recipe.errors.full_messages).to include("Howto3 can't be blank")
      end
    end
  end
end
