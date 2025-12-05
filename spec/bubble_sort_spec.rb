require "./bubble_sort.rb"

describe "bubble_sort" do 
  it "sorts an array of values from lowest to highest" do
    expect(bubble_sort([4,3,78,2,0,2])).to eq([0,2,2,3,4,78])
  end

  it "sorts an array with mixed positive and negative values correctly" do
    expect(bubble_sort([3, -1, 3, 2])).to eq([-1, 2, 3, 3])
  end

  it "sorts and empty array" do
    expect(bubble_sort([])).to eq([])
  end

  it "sorts a single element array" do
    expect(bubble_sort([1])).to eq([1])
  end
end