require 'smallest_subset'

describe Subset do

  describe '.smallest' do

    it 'accepts [1, 2, 2, 2, 3, 4, 1, 5, 1] & [2, 2, 2] and returns 3' do
      expect(subject.smallest([1, 2, 2, 2, 3, 4, 1, 5, 1], [2, 2, 2])).to eq 3
    end
  end
end