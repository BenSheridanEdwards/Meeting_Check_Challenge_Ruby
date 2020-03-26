require 'inflight_entertainment'

describe InflightEntertainment do

  context 'when there is two movies that can fill the flight time' do
    it 'evaluates the movie lengths of [2, 4] for a 6 hour flight, and returns true' do
      expect(subject.can_two_movies_fill_flight?([2, 4], 6)).to eq true
    end
  end

  context 'when there is no two movies that can fill the flight time' do
    it 'evaluates the movie lengths of [2, 4] for a 1 hour flight, and returns false' do
      expect(subject.can_two_movies_fill_flight?([2, 4], 1)).to eq false
    end
  end
  
end
