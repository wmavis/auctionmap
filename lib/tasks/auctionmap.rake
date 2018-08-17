require 'open-uri'

namespace :auctionmap do
  desc 'Load auctions'
  task :load_auctions => :environment do
    puts 'Loading auctions'
    # http://www.iltaxsale.com/new/index.php/county/Macon
    url = 'http://www.iltaxsale.com/new/pdf/MAC/MAC0915Results.pdf'

    open(url) do |io|
      reader = PDF::Reader.new(io)
      reader.pages.each do |page|
binding.pry
        puts page.text
      end
    end
    #puts reader.objects.inspect
  end
end
