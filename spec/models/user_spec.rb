require 'rails_helper'

RSpec.describe User, type: :model do

  context "validations" do
    it { should validate_confirmation_of(:password)  }
    it { should validate_presence_of(:password)  }
    it { should validate_presence_of(:email)  }
    it { should validate_uniqueness_of(:email)  }
  end

  context "authentication" do
    before {@user = create(:auth_user)}
    it "should validate user according his credentials" do
      expect(User.authenticate(@user.email, @user.password)).to eq @user
    end
  end
end
