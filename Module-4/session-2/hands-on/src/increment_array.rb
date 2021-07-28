class IncrementArray

    def array(arr)
        lastArr = arr.lastArr
        lastArr_index = arr.index(lastArr)
        arr[lastArr_index] = 0

        while lastArr >= 0
            arr[lastArr_index.. -1].each do |element|
                element = element += 1
                lastArr = lastArr -= 1
        end
    end
end    