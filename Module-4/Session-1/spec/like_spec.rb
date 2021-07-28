require_relative './src/like'

RSpec.describe WLI do
    it '1 like it?' do
        #given
        wli = WLI.new["Peter"]

        #then
        expect(like).to eq('Peter likes this')
    end

    it '2 Likes it?' do
        #given
        wli = WLI.new["Jacob", "Alex"]

        #then
        expect(like).to eq('Jacob and Alex like this')
    end

    it '3 Likes it?' do
        #given
        wli = WLI.new["Max", "John", "Mark"]

        #then
        expect(like).to eq('Max, John and Mark like this')
    end

    it 'No One Like it?' do
        #given
        wli = WLI.new[0]

        #then
        expect(like).to eq('no one likes this')
    end
end
    