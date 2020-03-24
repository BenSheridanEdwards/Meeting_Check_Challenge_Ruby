require 'run_path'

describe RunPath do

  describe '.lowest_visited_path' do

    context 'accepts a set of runs and a path and returns the lowest, most frequently visited path' do

      it 'accepts runs [1, 3, 5] and path [1, 2, 3, 4, 5] and returns 3' do
        expect(subject.lowest_visited_path([1, 2, 3, 4, 5], [1, 3, 5])).to eq 3
      end

      it 'accepts runs [2, 5, 6, 7] and path [1, 2, 3, 4, 5, 6, 7] and returns 5' do
        expect(subject.lowest_visited_path([1, 2, 3, 4, 5, 6, 7], [2, 5, 6, 7])).to eq 5
      end

      it 'accepts runs [6, 5, 3, 6] and path [1, 2, 3, 4, 5, 6, 7] and returns ' do
        expect(subject.lowest_visited_path([1, 2, 3, 4, 5, 6, 7], [6, 5, 3, 6])).to eq 4
      end

      it 'accepts runs [2, 7, 3, 9, 1, 5] and path [1, 2, 3, 4, 5, 6, 7, 8, 9] and returns 3' do
        expect(subject.lowest_visited_path([1, 2, 3, 4, 5, 6, 7, 8, 9], [2, 7, 3, 9, 1, 5])).to eq 3
      end

    end
  end
end
