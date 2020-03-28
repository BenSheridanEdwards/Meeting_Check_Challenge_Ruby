require 'reversing_in_place'

describe InPlace do

  describe '.reversing' do

    context "accepts a string and reverses its order in-place" do

      it "accepts '12345' and reverses to '54321'" do
        expect(subject.reversing('12345')).to eq '54321'
      end
    end

    context "accepts string and number arrays and reverses their order in-place" do
      
      it "accepts an array of strings ['1', '2', '3', '4', '5'] and reverses to ['5', '4', '3', '2', '1']" do
        expect(subject.reversing(['1', '2', '3', '4', '5'])).to eq ['5', '4', '3', '2', '1']
      end

      it 'accepts [1, 2, 3, 4, 5] and reverses to [5, 4, 3, 2, 1]' do
        expect(subject.reversing([1, 2, 3, 4, 5])).to eq [5, 4, 3, 2, 1]
      end
    end
  end


  describe '.reverse_words!' do
  end
end
