require 'spec_helper'

describe Item do
  it { should belong_to :project }
  it { should respond_to :closed }
  it { should have_many :iterations}
end

describe "A new Item" do
  before(:each) do
    @item = Item.create!
  end

  it "should have at least one iteration" do
    @item.should have_at_least(1).iteration
  end
end