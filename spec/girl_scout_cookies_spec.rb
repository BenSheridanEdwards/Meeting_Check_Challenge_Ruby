require 'girl_scout_cookies'

describe CookieOrders do

  describe '.merge_arrays' do

    it 'merges [3, 4, 6, 10, 11, 15] & [1, 5, 8, 12, 14, 19] and outputs [1, 3, 4, 5, 6, 8, 10, 11, 12, 14, 15, 19]' do
      expect(subject.merge_arrays([3, 4, 6, 10, 11, 15], [1, 5, 8, 12, 14, 19])).to eq [1, 3, 4, 5, 6, 8, 10, 11, 12, 14, 15, 19]
    end 
  end

end
