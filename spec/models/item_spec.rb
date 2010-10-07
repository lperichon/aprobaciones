require 'spec_helper'

describe Item do
  it { should belong_to :project }
  it { should respond_to :closed }
end