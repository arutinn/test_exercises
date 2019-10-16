require_relative '../sort_numbers'

describe '#sort_numbers' do
  let(:numbers) { ["0", "2", "8", "6", "4", "000", "00"] }
  let(:numbers2) { ["00", "12", "6", "14", "4", "000", "2", "8", "10", "0"] }
  let(:zeros) { ["0", "00", "000", "0000", "00000"] }

  it { expect(sort_numbers(numbers)).to eql(["000", "00", "0", "2", "4", "6", "8"]) }
  it { expect(sort_numbers(numbers2)).to eql(["000", "00", "0", "2", "4", "6", "8", "10", "12", "14"]) }
  it { expect(sort_numbers(zeros)).to eql(["00000", "0000", "000", "00", "0"]) }
end
