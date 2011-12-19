PENNY = 1
NICKEL = 5
DIME = 10

def coin_changer
  coins = []
  
  @amount.times do
    while @amount >= 10
      @amount -= 10
      coins << DIME
    else
      if @amount >= 5
        @amount -= 5
        coins << NICKEL
      else
        if @amount < 5 && @amount > 0
          @amount -= 1
          coins << PENNY
        end
      end
    end
  end
    
  return coins
end
  
describe "coin_changer" do

  it "changes 1" do
    @amount = 1
    coin_changer.should == [PENNY]
  end
  
  it "changes 2" do
    @amount = 2
    coin_changer.should == [PENNY, PENNY]
  end
  
  it "changes 3" do
    @amount = 3
    coin_changer.should == [PENNY, PENNY, PENNY]
  end
  
  it "changes 4" do
    @amount = 4
    coin_changer.should == [PENNY, PENNY, PENNY, PENNY]
  end
  
  it "changes 5" do
    @amount = 5
    coin_changer.should == [NICKEL]
  end
  
  it "changes 6" do
    @amount = 6
    coin_changer.should == [NICKEL, PENNY]
  end
  
  it "changes 10" do
    @amount = 10
    coin_changer.should == [DIME]
  end
  
  it "changes 11" do
    @amount = 11
    coin_changer.should == [DIME, PENNY]
  end
  
end