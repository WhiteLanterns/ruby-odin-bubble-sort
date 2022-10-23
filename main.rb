require 'pry-byebug'

number = [4,3,78,2,0,2]

def bubble_sort(list)
    # binding.pry
    list.each { |n|
        # binding.pry
        unless list[list.find_index(n) + 1].nil?
            if n > list[list.find_index(n) + 1]
                list[list.find_index(n)], list[list.find_index(n)+1] = list[list.find_index(n)+1], list[list.find_index(n)]
                bubble_sort(list)
            else
                next
            end
        else
            return list
        end
    }
end

puts bubble_sort(number)