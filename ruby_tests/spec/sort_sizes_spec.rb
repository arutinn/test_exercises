require_relative '../sort_sizes'

describe '#sort_sizes' do
  let(:sizes) { ["L", "L/P", "M", "M/P", "S", "S/P", "XL", "XL/P", "XS", "XS/P"] }
  let(:sizes2) { ["L", "M", "S", "XL", "XS", "XXL", "XXS"] }

  it { expect(sort_sizes(sizes)).to eql(["XS", "S", "M", "L", "XL", "XS/P", "S/P", "M/P", "L/P", "XL/P"]) }
  it { expect(sort_sizes(sizes2)).to eql(["XXS", "XS", "S", "M", "L", "XL", "XXL"]) }
end
