require_relative './../lib/meeting_checker.rb'

describe MeetingChecker do

  it 'accepts an array of meetings and outputs that same array if there are no overlaps' do
    expect(subject.availability([[1, 2], [4, 5], [6, 7]])).to eq [[1, 2], [4, 5], [6, 7]]
  end

end