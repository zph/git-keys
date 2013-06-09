require "git/keys/version"
require "net/https"

module Git
  module Keys
    # $ git keys defunkt
    # > curl "https://github.com/defunkt.keys
    def self.collect(user)
      response = Net::HTTP.get(URI "https://github.com/#{user}.keys")
        case response
      when nil || ""
        exit 1
      else
        response
      end
    end
  end
end
