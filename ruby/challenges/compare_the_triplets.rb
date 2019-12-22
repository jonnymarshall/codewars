def compareTriplets(a, b)
    scores = [0, 0]
    count = 0
    until count == 3
        if a[count] > b[count]
            scores[0]+=1
        elsif b[count] > a[count]
            scores[1]+=1
        else
            scores
        end
        count += 1
    end
    scores
end

p compareTriplets([5, 6, 7], [3, 6, 10])
