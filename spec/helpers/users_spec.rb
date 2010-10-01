require 'spec_helper'

describe UsersHelper do
  describe "element_actions" do
    it "dont include :edit" do
      !helper.element_actions.include? :edit
    end
  end
end

