require_relative 'env'

db = "/home/#{`whoami`.strip}/.openbazaar/OB-Mainnet.db"

db = "/Users/#{`whoami`.strip}/Library/Application\ Support/OpenBazaar/OB-Mainnet.db" if `uname`.strip == "Darwin"


DB = Sequel.connect "sqlite://#{db}"


puts DB[:keys].find{ |key| key[:type] == "bitcoin" }[:privkey]




# puts "Tables:"
# p DB.tables


# puts "Store:"
# p DB[:listings].to_a
#
# puts "Profile:"
# p DB[:profile].to_a
#
# puts "Keys:"
# p DB[:keys].to_a
#
# #
# # puts "Messages:"
# # p DB[:messages].to_a
#
# # profile - listings
#
# # DB.tables.each do |table|
# #   puts "#{table.capitalize}:"
# #   p DB[table].to_a
# #   puts
# # end
#
# puts "-" * 80
