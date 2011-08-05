def zombie_say
  "Must. Eat. Brains"
end
describe "my great code" do 
  it "should be able to evaluate true" do 
	  true.should == true
  end

  it "should not be in Orwell's 1984" do
    (2 + 2).should == 5
  end

  it "should know what zombies say" do 
    zombie_say.should match /brains/i
  end
end
