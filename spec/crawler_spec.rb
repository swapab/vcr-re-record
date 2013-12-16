require 'spec_helper'

describe Crawler do
	it 'does the crawling' do
		VCR.use_cassette "lets me crawl the site" do
			Crawler.crawl.should_not be_nil
		end
	end
end
