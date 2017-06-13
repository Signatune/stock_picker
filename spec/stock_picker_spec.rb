require "stock_picker"

example_prices = [17, 3, 6, 9, 15, 8, 6, 1, 10]

describe ".best_day_to_sell" do
  it "finds the best day to sell after buying on a given day, and the profit from selling on that day" do
    expect(best_day_to_sell(1, example_prices)).to eql([4, 12])
  end
  it "finds the best day to sell after buying on a later day" do
    expect(best_day_to_sell(5, example_prices)).to eql([8, 2])
  end
end

describe ".stock_picker" do
  it "gives the best day to buy and then sell for the most profit" do
    expect(stock_picker(example_prices)).to eql([1,4])
  end
end