require_relative '../src/like'

RSpec.describe WLI do
    it 'Who Likes it?' do
        #given
        wli = WLI.new

        #when
        like = wli.name["Jacob", "Alex"]

        #then
        expect(like).to eq('Jacob and Alex like this')
    end

    it 'Who Like it?' do
        #given
        wli = WLI.new

        #when
        like = wli.name["Max", "John", "Mark"]

        #then
        expect(like).to eq('Max, John and Mark like this')
    end
end
    