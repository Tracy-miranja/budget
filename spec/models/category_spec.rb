# spec/models/category_spec.rb
require 'rails_helper'

RSpec.describe Category, type: :model do
  describe 'validations' do
    it 'is invalid without a name' do
      category = Category.new(icon: 'test_icon.png')
      expect(category).to be_invalid
      expect(category.errors[:name]).to include("can't be blank")
    end

    it 'is invalid without an icon' do
      category = Category.new(name: 'Test Category')
      expect(category).to be_invalid
      expect(category.errors[:icon]).to include("can't be blank")
    end
  end

  describe 'associations' do
    it 'belongs to a user' do
      expect(Category.reflect_on_association(:user).macro).to eq(:belongs_to)
    end

    it 'has many expenses' do
      expect(Category.reflect_on_association(:expenses).macro).to eq(:has_many)
    end
  end
end
