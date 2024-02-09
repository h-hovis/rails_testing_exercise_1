require 'rails_helper'

RSpec.describe Article, type: :model do

  context 'Validations tests' do

  it 'is not valid without a title' do
    expect(Article.new(title: nil)).to_not be_valid
  end

  it 'is not valid without content' do
    expect(Article.new(content: nil)).to_not be_valid
  end

  it 'is not valid with a title less than 5 characters' do
    expect(Article.new(title: '1234')).to_not be_valid
  end

  it 'is not valid with content less than 50 characters' do
    expect(Article.new(content: '12345678901234567890123456789012345678901234567890')).to_not be_valid
  end
end
