require 'cafe_order_checker'

describe CafeOrderChecker do

  describe '.first_come_first_served?' do
    context 'both registers have the same number of orders' do
      it 'accepts [1, 4, 5], [2, 3, 6], [1, 2, 3, 4, 5, 6] and returns true' do
        expect(subject.first_come_first_served?([1, 4, 5], [2, 3, 6], [1, 2, 3, 4, 5, 6])).to eq true
      end

      it 'accepts [1, 5, 4], [2, 3, 6], [1, 2, 3, 4, 5, 6] and returns false' do
        expect(subject.first_come_first_served?([1, 5, 4], [2, 3, 6], [1, 2, 3, 4, 5, 6])).to eq false
      end
    end

    context 'registers have different lengths' do
      it 'accepts [1, 5], [2, 3, 6], [1, 2, 3, 5, 6], and returns true' do
        expect(subject.first_come_first_served?([1, 5], [2, 3, 6], [1, 2, 3, 5, 6])).to eq true
      end

      it 'accepts [1, 5], [2, 3, 6], [1, 2, 6, 3, 5] and returns false' do
        expect(subject.first_come_first_served?([1, 5], [2, 3, 6], [1, 2, 6, 3, 5])).to eq false
      end
    end
  end
end
