require 'rspec'
require './lib/multiplication_table.rb'

describe MultiplicationTable do
  it 'should be instance of multiplication table' do
    expect(subject).to be_a(MultiplicationTable)
  end
  describe '#new' do
    describe 'size' do
      it 'has a default of 9' do
        expect(MultiplicationTable.new.size).to eq(9)
      end

      it 'can be smaller' do
        expect(MultiplicationTable.new(5).size).to eq(5)
      end

      it 'can be bigger' do
        expect(MultiplicationTable.new(12).size).to eq(12)
      end
    end
  end

  describe '#header_row' do
    it 'should return an array ([1, 2, 3, 4, 5, 6, 7, 8, 9])' do
      expect(subject.header_row).to eq([1, 2, 3, 4, 5, 6, 7, 8, 9])
    end

    context 'for smaller tables' do
      it 'returns an array ([1, 2, 3, 4, 5])' do
        expect(MultiplicationTable.new(5).header_row).to eq([1, 2, 3, 4, 5])
      end
    end
  end

  describe '#content' do
    it 'should return an array of arrays (9 rows of 9 element arrays)' do
      # Verify there are 9 rows of content
      expect(subject.content.length).to eq(9)
      (0..8).each do |number|
        # For each row, verify there are 9 columns of content
        expect(subject.content[number].length).to eq(9)
      end
    end
    it 'should contain the first row of the table ([1, 2, 3, 4, 5, 6, 7, 8, 9])' do
      expect(subject.content[0]).to eq([1, 2, 3, 4, 5, 6, 7, 8, 9])
    end
    it 'should contain the second row of the table ([2, 4, 6, 8, 10, 12, 14, 16, 18])' do
      expect(subject.content[1]).to eq([2, 4, 6, 8, 10, 12, 14, 16, 18])
    end
    it 'should contain the ninth row ([9, 18, 27, 36, 45, 54, 63, 72, 81])' do
      expect(subject.content[8]).to eq([9, 18, 27, 36, 45, 54, 63, 72, 81])
    end
  end

  describe '#to_s' do
    context 'for a 9x9 table' do
      it 'should look like a multiplication table' do
        expected_output = <<-END_OF_TABLE
   *   1   2   3   4   5   6   7   8   9
   1   1   2   3   4   5   6   7   8   9
   2   2   4   6   8  10  12  14  16  18
   3   3   6   9  12  15  18  21  24  27
   4   4   8  12  16  20  24  28  32  36
   5   5  10  15  20  25  30  35  40  45
   6   6  12  18  24  30  36  42  48  54
   7   7  14  21  28  35  42  49  56  63
   8   8  16  24  32  40  48  56  64  72
   9   9  18  27  36  45  54  63  72  81
        END_OF_TABLE

        expect(subject.to_s).to eq(expected_output)
      end
    end

    context 'for a 5x5 table' do
      it 'should look like a multiplication table' do
        expected_output = <<-END_OF_TABLE
   *   1   2   3   4   5
   1   1   2   3   4   5
   2   2   4   6   8  10
   3   3   6   9  12  15
   4   4   8  12  16  20
   5   5  10  15  20  25
        END_OF_TABLE

        expect(MultiplicationTable.new(5).to_s).to eq(expected_output)
      end
    end
  end
end
