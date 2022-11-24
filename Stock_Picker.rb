stock_array=[17,3,6,9,7,8,6,1,10]

def stock_picker(stocks)
  length=stocks.length()
  profits=Array.new()
  index=Array.new() {Array.new()}
  for i in 0..length-1
    buy=stocks[i]
    for j in 0..length-1
      sell=stocks[j]
      if i<j
        profit=stocks[j]-stocks[i]
        profits.push(profit)
        index << [i,j]
      end
    end
  end
  #p profits
  #p index
  highest=profits.max()
  #p highest
  buyday=index[profits.find_index(highest)][0]
  sellday=index[profits.find_index(highest)][1]
  return [buyday, sellday]

end

trade=stock_picker(stock_array)
p trade