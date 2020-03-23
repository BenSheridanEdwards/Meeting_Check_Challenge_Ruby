require_relative './../lib/meeting_checker.rb'

describe MeetingChecker do

  it 'accepts an array of meetings with no overlap and returns/outputs that same array' do
    expect(subject.availability([[1, 2], [4, 5], [6, 7]])).to eq [[1, 2], [4, 5], [6, 7]]
  end

  it 'accepts an array of meetings with one overlap and returns the two overlapped meetings as one meeting' do
    expect(subject.availability([[0, 1], [3, 5], [4, 8], [10, 12]])).to eq [[0, 1], [3, 8], [10, 12]]
  end

  it 'accepts an array of meetings with two overlaps and returns the four overlapped meetings as two meetings' do
    expect(subject.availability([[0, 1], [3, 5], [4, 8], [10, 12], [9, 10]])).to eq [[0, 1], [3, 8], [9, 12]]
  end

  it 'accepts an array of meetings where one meeting subsumes the rest, and return only that one meeting' do
    expect(subject.availability([[1, 10], [2, 6], [3, 5], [7, 9]])).to eq [[1, 10]]
  end
end