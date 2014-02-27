require "csv"
require "open-uri"

class Phenome
	class Database
		attr_accessor :home_url
	end

	class JAX < Database
		def initialize
			@home_url = "http://phenome.jax.org/"
		end

		def download_csv(csv_url, destination)
			CSV.open(destination, "wb") do |csv|
				open(csv_url).each_line do |line|
					csv << line.split(",")
				end
			end
		end
	end
end
