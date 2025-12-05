# frozen_string_literal: true

require './substrings'

describe 'substrings' do
  it 'finds all substrings with a single word as input' do
    dictionary = %w[
      below down go going horn how
      howdy it i low own part
      partner sit
    ]

    result = substrings('below', dictionary)

    expect(result).to eq({
                           'below' => 1,
                           'low' => 1
                         })
  end

  it 'finds all substrings with multiple words as input' do
    dictionary = %w[
      below down go going horn how
      howdy it i low own part
      partner sit
    ]

    phrase = "Howdy partner, sit down! How's it going?"

    expected = {
      'down' => 1,
      'go' => 1,
      'going' => 1,
      'how' => 2,
      'howdy' => 1,
      'it' => 2,
      'i' => 3,
      'own' => 1,
      'part' => 1,
      'partner' => 1,
      'sit' => 1
    }

    expect(substrings(phrase, dictionary)).to eq(expected)
  end
end
