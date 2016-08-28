require 'rails_helper'

describe User do
  context "factory" do
    specify "valid" do
      expect(build(:user)).to be_valid
    end

    it "returns invalid without name" do
      expect(build(:user, name: nil)).not_to be_valid
    end
  end
end
