require 'reversing_in_place'

describe InPlace do

  it "accepts a string and reverses its order in place" do
    expect(subject.reversing("12345")).to eq "54321"
  end

  it 'accepts an array and reverses its order in place' do
    expect(subject.reversing(["1", "2", "3", "4", "5"])).to eq ["5", "4", "3", "2", "1"]
  end

end
