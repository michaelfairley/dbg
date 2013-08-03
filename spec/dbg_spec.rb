require 'spec_helper'

describe Dbg do
  before(:each) do
    Dbg.out = @output = StringIO.new
  end

  it "prints whatever the blocks returns and its result" do
    x = 12
    dbg{ "x" }

    @output.string.strip.should == "x: 12"
  end

  it "can handle complex expressions" do
    dbg{ "1 + 1" }
    @output.string.strip.should == "1 + 1: 2"
  end
end
