require 'reversing_in_place'

describe InPlace do

  it "accepts a string and reverses its order in place" do
    expect(subject.reversing("12345")).to eq "54321"
  end
  
end
