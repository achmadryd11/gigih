require_relative '../src/increment_array'

Rspec.describe IncrementArray do
    it 'First increment array of integer' do 
        increment_array =  IncrementArray.new

        input = increment_array.array([5, 6, 1])

        expect(result).to ([5, 6, 2])
    end
end

