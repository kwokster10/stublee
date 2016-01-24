require 'rails_helper'

RSpec.describe Rating, :type => :model do
  context "when draft is true" do
    let(:rating) { build(:draft_rating) }

    it "saves without content or stars" do
      expect(rating).to be_valid
    end
  end

  context "when draft is false" do
    let(:rating) { build(:rating, :published, content: nil) }
    let(:rating1) { build(:published_rating) }

    it "validates for all attributes" do
      expect(rating).to be_invalid
      expect(rating1).to be_valid
    end
  end
end
