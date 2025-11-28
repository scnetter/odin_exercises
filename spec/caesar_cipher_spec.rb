require "./caesar_cipher.rb"

describe "caesar_cipher" do
  it "shifts lowercase letters" do
    expect(caesar_cipher("abc", 3)).to eq("def")
  end

  it "preserves spaces" do
    expect(caesar_cipher("hello world", 1)).to eq("ifmmp xpsme")
  end

  it "shifts upper case letters" do 
    expect(caesar_cipher("What", 5)).to eq("Bmfy")
  end

  it "preserves punctuation and spaces" do
    expect(caesar_cipher("What a string!", 5)).to eq("Bmfy f xywnsl!")
  end

  it "wraps around Z/z" do 
    expect(caesar_cipher("xyz", 3)).to eq("abc")  
    expect(caesar_cipher("XYZ", 3)).to eq("ABC")
  end

  it "handles a shift of 0" do
    expect(caesar_cipher("Hello", 0)).to eq("Hello")
  end

  it "wraps with shifts greater than 26" do
    expect(caesar_cipher("abc", 26)).to eq("abc")
    expect(caesar_cipher("abc", 27)).to eq("bcd")
  end

  it "handles mixed case and punctuation" do
    expect(caesar_cipher("The Quick Brown Fox!", 13)).to eq("Gur Dhvpx Oebja Sbk!")
  end

  it "preserves numbers and special characters" do
    expect(caesar_cipher("Hello123!@#", 1)).to eq("Ifmmp123!@#")
  end
end