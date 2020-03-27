require 'inflight_entertainment'

describe InflightEntertainment do

  context 'when there is two movies that can fill the flight time' do
    it 'evaluates the movie lengths of [2, 4] for a 6 hour flight, and returns true' do
      expect(subject.can_two_movies_fill_flight?([2, 4], 6)).to eq true
    end

    it 'evaluates the movie lengths of [1, 2, 3, 4, 5, 6] for a 7 hour flight time' do
      expect(subject.can_two_movies_fill_flight?([1, 2, 3, 4, 5, 6], 7)).to eq true
    end
  end

  context 'when there is two movies that can not fill the flight time' do
    it 'evaluates the movie lengths of [2, 4] for a 1 hour flight, and returns false' do
      expect(subject.can_two_movies_fill_flight?([2, 4], 1)).to eq false
    end
  end

  context 'when there is only movie or no movies to fill the flight time' do
    it 'evaluates the movie length of [6] for a 6 hour flight, and returns false' do
      expect(subject.can_two_movies_fill_flight?([6], 6)).to eq false
    end

    it 'evaluates no movies [] for a 2 hour flight, and returns false' do
      expect(subject.can_two_movies_fill_flight?([], 2)).to eq false
    end
  end

  context 'when there is movie/s half the flight length' do
    it 'evaluates the movie lengths of [3, 8] for a 6 hour flight, and returns false' do
      expect(subject.can_two_movies_fill_flight?([3, 8], 6)).to eq false
    end

    it 'evaluates the movie lengths of [3, 8, 3] for a 6 hour flight, and returns true' do
      expect(subject.can_two_movies_fill_flight?([3, 8, 3], 6)).to eq true
    end
  end
end
