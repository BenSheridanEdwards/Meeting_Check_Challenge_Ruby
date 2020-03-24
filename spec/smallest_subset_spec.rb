require 'smallest_subset'

describe Subset do

  describe '.smallest_degree' do

    context 'accepts two subsets of the original set and returns the smallest degree' do

      # Original Set = [1, 2, 2, 2, 3, 4, 1, 5, 1, 6]

      it 'accepts [1, 2, 2, 2, 3, 4, 1, 5, 1] & [2, 2, 2] and returns 3' do
        expect(subject.smallest_degree([1, 2, 2, 2, 3, 4, 1, 5, 1], [2, 2, 2])).to eq 3
      end

      it 'accepts [3, 4, 1, 5, 1, 6] & [2, 3, 4, 1] and return 1' do
        expect(subject.smallest_degree([3, 4, 1, 5, 1, 6], [2, 3, 4, 1])).to eq 1
      end
    end
  end
end