require 'repeat'

# Given a collection of patterns, ensure that repeated sub-patterns are not returned as unique patterns

describe "does_not_repeat" do
    
  it "is true if there is only one item" do
    does_not_repeat([1]).should be_true
  end
  
  it "is true if there are two unique items" do
    does_not_repeat([1,2]).should be_true
  end
  
  it "is false if both items are the same" do
    does_not_repeat([1,1]).should be_false
  end
  
  it "is false if two unique items repeat" do
    does_not_repeat([1,2,1,2]).should be_false
  end
  
  it "is true if items don't repeat in the same way"do
    does_not_repeat([1,2,2,1]).should be_true
  end
  
  it "is false if two unique items repeat three times" do
    does_not_repeat([1,2,1,2,1,2]).should be_false
  end
  
  it "is false if substrings of three repeat" do
    does_not_repeat([1,2,3,1,2,3]).should be_false
  end
  
  it "is true if the substrings aren't a perfect match" do
    does_not_repeat([1,2,3,1,2,2]).should be_true
  end
  
  it "is false if two unique items repeat five times" do
    does_not_repeat([1,2,1,2,1,2,1,2,1,2]).should be_false
  end
end