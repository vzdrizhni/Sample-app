require 'rails_helper'

RSpec.describe User, type: :model do

  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:email) }
    it { should validate_uniqueness_of(:email) }
    it { should validate_length_of(:email) }
  end

  describe 'assosiations' do
    it { should have_many(:microposts) }
    it { should have_many(:active_relationships) }
    it { should have_many(:passive_relationships) }
    it { should have_many(:following) }
    it { should have_many(:followers) }
  end

  describe 'class methods' do
    describe '::follow' do
      it 'should follow a user' do
        user = FactoryBot.build(:user)
        follower = FactoryBot.build(:follower)
        user.follow(follower)
        expect(user.following).to include(follower)
      end
    end
  end

end
