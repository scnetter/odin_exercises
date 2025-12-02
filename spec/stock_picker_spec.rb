require "./stock_picker.rb"

describe "stock_picker" do
  it "picks lowest day as best day to buy and highest to sell" do
    expect(stock_picker([17,3,6,9,15,8,6,1,10])).to eq([1,4])
  end
end