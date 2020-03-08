
require "net/https"
require "uri"

def op_returns
  uri = URI.parse("https://runkit.io/makevoid/from-mobile-test/branches/master")
  http = Net::HTTP.new(uri.host, uri.port)
  http.use_ssl = true
  http.verify_mode = OpenSSL::SSL::VERIFY_NONE

  request = Net::HTTP::Get.new(uri.request_uri)

  response = http.request(request)
  JSON.parse response.body
end
