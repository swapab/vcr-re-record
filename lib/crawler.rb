require 'anemone'

class Crawler
	def self.crawl
		::Anemone.crawl('http://www.legalwins.com', set_anemone_options) do |anemone|

		  anemone.on_every_page do |page|
		  	page.doc
		  	puts page.url
		  end
		end
	end

	def self.set_anemone_options
		{ depth_limit: 1,
			verbose:     false,
			skip_query_strings: true
		}
	end
end
