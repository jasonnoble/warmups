require_relative '../../lib/fizz_buzz'

describe Fixnum do
  it 'should be a Fixnum' do
    expect(5).to be_a(Fixnum)
  end

  describe '#to_fizz' do
    context 'when not divisible by 3' do
      context 'when not divisible by 5' do
        it 'returns the number' do
          expect(1.to_fizz).to eq(1)
          expect(2.to_fizz).to eq(2)
        end
      end
      context 'when divisible by 5' do
        it 'returns Buzz' do
          expect(5.to_fizz).to eq('Buzz')
        end
      end
    end
    context 'when divisible by 3' do
      context 'when not divisible by 5' do
        it 'returns Fizz' do
          expect(6.to_fizz).to eq('Fizz')
        end
      end
      context 'when divisible by 5' do
        it 'returns FizzBuzz' do
          expect(15.to_fizz).to eq('FizzBuzz')
        end
      end
    end
  end
end
