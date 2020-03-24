require 'smallest_subset_length'

describe Subset do

  describe '.smallest_subset_length' do

    context 'accepts and returns the smallest subset length' do
      it 'accepts [1, 2, 2, 2, 3, 4, 1, 5, 1, 6] and returns 3' do
        expect(subject.smallest_subset_length([1, 2, 2, 2, 3, 4, 1, 5, 1, 6])).to eq 3
      end
    end
  end
end