require 'rails_helper'

RSpec.describe Page, type: :model do
  before :each do
    #
  end
  it "has a valid factory" do
    page = FactoryGirl.create(:page)
    expect(page).to be_valid
  end
  it "is invalid without title" do
    page = FactoryGirl.build(:page, title: nil)
    expect(page).not_to be_valid

  end
end
