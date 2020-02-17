# Cryptocurrency is all the rage. You have decided to create your own,
# KelloggCoin, that will massively disrupt financial markets at the Global
# Hub.

# Don't change the following code, which represents a series of transactions, each
# of which represents a transfer of KelloggCoin from one user to another – the first 
# transaction is the "ICO" (Initial Coin Offering)
blockchain = [
  { from_user: nil, to_user: "brian", amount: 21000 },
  { from_user: "brian", to_user: "ben", amount: 9000 },
  { from_user: "brian", to_user: "jeff", amount: 7000 },
  { from_user: "ben", to_user: "jeff", amount: 400 },
  { from_user: "brian", to_user: "jeff", amount: 1500 },
  { from_user: "jeff", to_user: "brian", amount: 4500 },
  { from_user: "jeff", to_user: "ben", amount: 1750 }
]

# Write code below that returns the number of KelloggCoin that each user has in their 
# KelloggCoin "wallet".

# It should print out:
# Brian's KelloggCoin balance is 8000
# Ben's KelloggCoin balance is 10350
# Jeff's KelloggCoin balance is 2650

brians_wallet = 0
bens_wallet = 0
jeffs_wallet = 0

for transaction in blockchain

    if transaction[:to_user]=="brian"
        brians_wallet = brians_wallet + transaction[:amount]
    elsif transaction[:to_user]=="ben"
        bens_wallet = bens_wallet + transaction[:amount]
    elsif transaction [:to_user]=="jeff"
        jeffs_wallet = jeffs_wallet + transaction[:amount]
    end

    if transaction[:from_user]=="brian"
        brians_wallet = brians_wallet - transaction[:amount]
    elsif transaction[:from_user]=="ben"
        bens_wallet = bens_wallet - transaction[:amount]
    elsif transaction [:from_user]=="jeff"
        jeffs_wallet = jeffs_wallet - transaction[:amount]
    end
end

puts "Brian's KelloggCoin balance is #{brians_wallet}"
puts "Ben's KelloggCoin balance is #{bens_wallet}"
puts "Jeff's KelloggCoin balance is #{jeffs_wallet}"
