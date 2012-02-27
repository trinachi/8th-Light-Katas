require 'repeat'

# Given a collection of patterns, ensure that repeated sub-patterns are not returned as unique patterns

describe "does_not_repeat" do
    
  it "is true if there is only one item" do
    does_not_repeat([1]).should be_true
  end
end