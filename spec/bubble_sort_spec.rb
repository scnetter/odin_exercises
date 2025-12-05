require "./bubble_sort.rb"

describe "bubble_sort" do 
  it "sorts an array of values from lowest to highest" do
    expect(bubble_sort([4,3,78,2,0,2])).to eq([0,2,2,3,4,78])
  end
end