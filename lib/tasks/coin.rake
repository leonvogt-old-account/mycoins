require 'open-uri'
namespace :coin do
  desc "TODO"
  task import: :environment do
      allcoins = open("https://api.coinmarketcap.com/v1/ticker/").read
      allcoinsArray = JSON.parse(allcoins)
      allcoinsArray.each do |data|
        name = data["name"]
        symbol = data["symbol"]
        rank = data["rank"]
        price_usd = data["price_usd"]
        price_btc = data["price_btc"]
        percent_change_24h = data["percent_change_24h"]
        @coin = Coin.find_by_name(name)

        if @coin.nil?
          puts "Created Coin: #{name}"
          @coin = Coin.new
        else
          puts "Coin Exists: #{name}"
        end

        @coin.name = name
        @coin.symbol = symbol
        @coin.rank = rank
        @coin.price_usd = price_usd
        @coin.price_btc = price_btc
        @coin.percent_change_24h = percent_change_24h
        @coin.save
      end


    #GET AND SAVE COINCAP COINs
    # content = open("http://www.coincap.io/coins").read
    # coinArray = JSON.parse(content)
    # coinArray.each do |coindata|
    #   @coin = Coin.find_by_name(coindata)
    #
    #   if @coin.nil?
    #     puts "Created Coin: #{coindata}"
    #     @coin = Coin.new
    #   else
    #     puts "Coin Exists: #{coindata}"
    #   end
    #
    #   @coin.name = coindata
    #   @coin.save
    # end

    #GET COINCAP PRICE FROM COIN
    # @coins = Coin.all
    # @coins.each do |c|
    #   coinname = c.name.downcase
    #   pricestring = "#{coinname}Price"
    #   puts "Coin : #{coinname}"
    #   puts "pricestring : #{pricestring}"
    #   coincontent = open("http://www.coincap.io/page/#{c.name}").read
    #   coincontentArray = JSON.parse(coincontent)
    #   coincontentArray.each do |data|
    #     price = data[0]["#{coinname}Price"]
    #     puts "Price: #{price}"
    #     puts ""
    #   end
    # end
  end
end
