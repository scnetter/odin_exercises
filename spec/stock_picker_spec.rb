require "./stock_picker.rb"

describe "stock_picker" do
  it "picks lowest day as best day to buy and highest to sell" do
    expect(stock_picker([17,3,6,9,15,8,6,1,10])).to eq([1,4])
  end
  it "picks correctly when lowest and highest are the last two entries" do
    expect(stock_picker([17,3,6,9,13,8,6,1,15])).to eq([7,8])
  end
  it "picks correctly when highest entry is first and lowest is last" do
    expect(stock_picker([17,3,6,9,8,15,6,2,1])).to eq([1,5])
  end
end