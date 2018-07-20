def randomNumber
    dealerNumber = rand (1 .. 21)
    return dealerNumber
end 

puts randomNumber

$cards = [1, 1, 1, 1, 2, 2, 2, 2, 3, 3, 3, 3, 4, 4, 4, 4, 5, 5, 5, 5, 6, 6, 6, 6, 7, 7, 7, 7, 8, 8, 8, 8, 9, 9, 9, 9, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10]

def getCard
    randomIndex = rand(0 .. 51)
    $randomCard = $cards[randomIndex]
    $cards.delete_at(randomIndex)
    return $randomCard
end

puts getCard

def hit(total)
    randomIndex = rand(0 .. 51)
    hitCard = $cards[randomIndex] 
    total = total + hitCard
    puts hitCard
    return total
end

puts hit($randomCard)


