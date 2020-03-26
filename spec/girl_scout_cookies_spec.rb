require 'girl_scout_cookies'

describe CookieOrders do

  describe '.merge_arrays' do

    context 'when both arrays are the same length' do
      it 'merges [3, 4, 6, 10, 11, 15] & [1, 5, 8, 12, 14, 19] and outputs [1, 3, 4, 5, 6, 8, 10, 11, 12, 14, 15, 19]' do
        expect(subject.merge_arrays([3, 4, 6, 10, 11, 15], [1, 5, 8, 12, 14, 19])).to eq [1, 3, 4, 5, 6, 8, 10, 11, 12, 14, 15, 19]
      end 
      it 'merges [4, 6, 7, 9, 15, 16] & [1, 3, 8, 10, 12, 17] and outputs [1, 3, 4, 6, 7, 8, 9, 10, 12, 15, 16, 17]' do
        expect(subject.merge_arrays([4, 6, 7, 9, 15, 16], [1, 3, 8, 10, 12, 17])).to eq [1, 3, 4, 6, 7, 8, 9, 10, 12, 15, 16, 17]
      end 
    end

    context 'when the input arrays are different sizes' do
      it 'merges [1, 3, 5, 8, 10, 14] & [2, 4, 7, 11] and outputs [1, 2, 3, 4, 5, 7, 8, 10, 11, 14]' do
        expect(subject.merge_arrays([1, 3, 5, 8, 10, 14], [2, 4, 7, 11])).to eq [1, 2, 3, 4, 5, 7, 8, 10, 11, 14]
      end
      it 'merges [6, 7, 9] & [1, 3, 5, 10] and outputs [1, 3, 5, 6, 7, 9, 10]' do
        expect(subject.merge_arrays([6, 7, 9], [1, 3, 5, 10])).to eq [1, 3, 5, 6, 7, 9, 10]
      end
    end

    context 'when both arrays are empty' do
      it 'merges [] & [] and outputs []' do
        expect(subject.merge_arrays([], [])).to eq []
      end
    end

    context 'when one of the input arrays is empty' do
      it 'merges [1, 2, 3] & [] and outputs [1, 2, 3]' do
        expect(subject.merge_arrays([1, 2, 3], [])).to eq [1, 2, 3]
      end
      it 'merges [] & [1, 2, 3] and outputs [1, 2, 3]' do
        expect(subject.merge_arrays([], [1, 2, 3])).to eq [1, 2, 3]
      end
    end
  end
end
